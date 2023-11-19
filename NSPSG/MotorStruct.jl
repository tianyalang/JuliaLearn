struct NSPSG1
    name::String
    SN::Int  # 额定容量/kVA
    UN::Int  # 额定电压/V
    cosphi::Float16
    f::Int   # 额定频率
    nN::Int  # 额定转速 r/min
    m::Int  # 相数
    p::Int  # 极对数

    D1::Float16  # 定子外径/mm
    Di1::Float16 # 定子内径/mm
    δ::Float16     # 单边气隙
    Di::Float16  # 转子内径
    Lt::Float16    # 铁芯总长
    nk::Int      # 通风道数
    bk::Int     # 通风道宽
    KFe::Float16

    Z2::Int     # 转子虚槽数
    Z2p::Int    # 转子实槽数
    Z1::Int  # 定子槽数
    y1::Int   # 绕组节距
    a::Int    # 并联支路数
    Ns::Int  # 每槽导体数
    Nt::Int    # 并绕根数
    d::Int   # 裸导线直径/mm
    dc::Int # 导线直径/mm
end

# p = NSPSG("srz", 11, 3)