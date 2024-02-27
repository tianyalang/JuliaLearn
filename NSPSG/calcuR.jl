clear()
include("./funs.jl")

# 圆盘线圈电阻计算

# phi = 2 # 线径
# d1 = 459
# d2 = 509
# N = 76
# N2 = 3
# yingxian = 1500 * 2

# d = (d1 + d2) / 2
# L = pi * d * N + yingxian

# S = pi * phi^2 / 4
# R = rho(20) * L / S / 1000
# M = S * L * 8.9 * 1e-6

# Lcr = pi*d2/20*pi*phi*N2 # cr带长
# Lym = pi*d/20*(25+17)*2*2  # 云母带长


# 矩形线圈电阻计算
S = flatWireArea(9, 2.5)
N = 4
L1 = 60.4
L2 = 182
w = 6.2  # 线圈在长宽方向的厚度
r = 5   # 弯角半径
yingxian = 0

L = (L1+L2-4r)*2 + 2*pi*(r+w/2)
L = 1600*2
Lall = L*N+yingxian
R = rho(20)*L/S/1000/14*4

