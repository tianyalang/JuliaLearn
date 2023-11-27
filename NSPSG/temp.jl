include("./MotorStruct.jl")
# include("./funs.jl")

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
    480,   # 铁芯总长
    470,
    6,      # 通风道数
    10,     # 通风道宽
    0.96,
    4,  # 每极每相槽数
    10,   # 绕组节距
    10,    # 并联支路数
    9,  # 每槽导体数
    6,    # 并绕根数
    54,     # 转子虚槽数
    36,    # 转子实槽数 
    1,   # 裸导线直径/mm
    1) # 导线直径/mm


IN(p)
tao(p)
# l = (pi*25 + (1553-15)*2)/1000
# s = flatWireArea(9, 2.4)
# r = rho(115)*l/s/14/2*8


# Di1 = 540
# hs0 = 1
# hs1 = 5
# hs2 = 66
# Rs = 0
# beta = 20/24
# p = 1
# t = pi/2/p*(Di1+2*(hs0+hs1)+hs2+Rs)*beta
# x= 115
# y = rho(x)
# y = kdelta(1, 10, 5)

# y = kv(x, 10)
# z = kv(x, 10, 2)

# plot(x, y, x, z, "o-")

# lef(10,3,2,1.3,3,2.2)

# delta = 8E-3
# D = 540E-3
# Lef = 438E-3
# mu0 = 4E-7*pi
# Bdelta = 0.5595

# beta = 0.5


# Km = beta*pi*D*Lef*Bdelta^2/delta/2/mu0*1E-3

# G = 21800
# fg = 0.0643
# K = G/fg

# e0 = 0.25
# fm = Km*e0/(K - Km)
# Fq = K*fm

# D = 54
# L = 43.8
# e0 = 0.025
# delta0 = 0.8
# 30*D*L*e0/delta0