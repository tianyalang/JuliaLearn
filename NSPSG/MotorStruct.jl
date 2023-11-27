struct NSPSG
    #隐极同步电机结构体
    #变量命名参考：上海电器科学研究所《中小型电机设计手册》5.4节
    name::String    # 电机名称
    PN::Int         # 额定功率/kW
    UN::Int         # 额定线电压/V
    nN::Int         # 额定转速 r/min
    f::Int          # 额定频率
    cosphi::Float16 # 额定功率因数
    m::Int          # 相数
    p::Int          # 极对数,可通过其它参数算出来,但用得太多,故专门定义为输入变量

    D1::Float16     # 定子外径/mm
    Di1::Float32    # 定子内径/mm
    δ::Float16      # 单边气隙
    Di::Float16     # 转子内径
    lt::Float16     # 定子铁芯总长
    lm::Float16     # 转子铁芯总长
    nk::Int         # 通风道数
    bk::Int         # 通风道宽
    KFe::Float16    # 叠压系数

    q::Int          # 每极每相槽数, 定子槽数Z1=2pmq
    y1::Int         # 绕组节距
    a::Int          # 并联支路数
    Ns::Int         # 每槽导体数
    Nt::Int         # 并绕根数
    Z2::Int         # 转子虚槽数
    Z2p::Int        # 转子实槽数
    d::Int          # 裸导线直径/mm
    dc::Int         # 导线直径/mm
end

function IN(s)
    # 额定相电流
    s.PN/sqrt(3)/s.UN/s.cosphi*1e3
end

function tao(s)
    # 定子极距/mm
    pi*s.Di1/2/s.p
end

function v(s)
    # 圆周速度/ m/s
    2*f*tao(s)/1000
end

function Fb(s)
    # 波形系数
    dA = s.Z2 / s.p / 2 # 每极转子虚槽 
    dB = s.Z2p / s.p / 2# 每极转子实槽
    dH = 0
    for k = 0:1:dB/2-1
        dH = dH + dA - 1 - 2 * k
    end
    Fd = dH * 2 / dA / dB # 磁场分布系数

    alpha = pi * dB / 2 / dA

    temp = W(alpha, 1)^2 + W(alpha, 3)^2 + W(alpha, 5)^2
    BEF = sqrt(temp / 2)
    BEF / Fd, Fd
end

function W(alpha, n=1)
    # 磁场分布曲线不同阶次波幅值
    # n=1,3,5,7....
    4/pi/alpha*sin(n*alpha)/n^2
end