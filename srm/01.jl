SN = 320  # 额定容量/kVA
UN = 400  # 额定电压/V
cosphi = 0.8
f = 50
nN = 600  # 额定转速 r/min
m = 3  # 相数

D1 = 700  # 定子外径/mm
Di1 = 530 # 定子内径/mm
δ = 1.4     # 单边气隙
Di2 = 180  # 转子内径
Lt = 480   # 铁芯总长
nk = 6      # 通风道数
bk = 10     # 通风道宽
KFe = 0.96

Z2 = 90     # 转子虚槽数
Z2p = 60    # 转子实槽数
Z1 = 120  # 定子槽数
y1 = 10   # 绕组节距
a = 10    # 并联支路数
Ns = 9 + 8  # 每槽导体数
Nt = 6    # 并绕根数
d = 1.4   # 裸导线直径/mm
dc = 1.479 # 导线直径/mm

p = 60f / nN # 极对数
IN = SN * 1e3 / sqrt(3) / UN # 额定电流/A
bkp = bk^2 / (bk + 5δ / 2) # 适用于定转子通风道对齐情况
Leff = Lt - nk * bkp # 有效铁芯长
LFet = (Lt - nk * bk) * KFe # 净铁芯长
dA = Z2/2p      # 每极转子虚槽数
dB = Z2p/2p
dC = dA - dB  # 大齿占槽数
q = Z1 / (2 * p * m)  # 每极每相槽数
β = y1 / (m * q)    # 节距系数
Kp = sin(β * pi / 2)  # 短距系数
Kd = sin(pi / 2 / m) / q / sin(pi / 2 / m / q) # 绕组分布系数
Kdp = Kp * Kd  # 绕组系数
N = Ns * Z1 / m / a  # 每相串联导体数
qa = pi * d^2 / 4  # 导线截面积
ja = IN / (a * Nt * qa) # 定子绕组电密 A/mm^2
A = m * N * IN / pi / Di1 # 线负荷
Aj = A * ja

