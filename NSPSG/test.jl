<<<<<<< Updated upstream
include("./MotorStruct.jl")


p = NSPSG(
    "srz",
    200,  # 额定功率/kW
    400,  # 额定电压/V
    1500,  # 额定转速 r/min
    50,
    0.8,
    3,  # 相数
    3,  # 极对数
    620,  # 定子外径/mm
    450, # 定子内径/mm
    1.5,     # 单边气隙
    180,  # 转子内径
    390,   # 定子铁芯总长
    400,   # 转子铁芯总长
    6,      # 通风道数
    10,     # 通风道宽
    0.96,
    4,  # 每极每相槽数
    10,   # 绕组节距
    6,    # 并联支路数
    10,  # 每槽导体数
    6,    # 并绕根数
    54,     # 转子虚槽数
    36,    # 转子实槽数 
    1,   # 裸导线直径/mm
    1) # 导线直径/mm


# IN(p)
# tao(p)
# Z1(p)
# Kdp(p)
N(p)
skewAngle(p)
=======
include("./funs.jl")

L = (1310-15)*2+pi*15
s = flatWireArea(9, 2.5)

r = rho(20)*L/s/4*4/1000
>>>>>>> Stashed changes
