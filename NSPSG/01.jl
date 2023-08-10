
# 计算参数
p = 60f / nN # 极对数
IN = SN * 1e3 / sqrt(3) / UN # 额定电流/A
D2 = Di1 - 2δ
bkp = bk^2 / (bk + 5δ / 2) # 适用于定转子通风道对齐情况
Leff = Lt - nk * bkp # 有效铁芯长
LFet = (Lt - nk * bk) * KFe # 净铁芯长
dA = Z2/2p      # 每极转子虚槽数
dB = Z2p/2p
dC = dA - dB  # 大齿占槽数
q = Z1 / (2 * p * m)  # 每极每相槽数
β = y1 / (m * q)    # 节距系数
Kp = sin(β * pi / 2)  # 短距系数
Kd = sin(pi / 2m) / q / sin(pi / 2m / q) # 绕组分布系数
Kdp = Kp * Kd  # 绕组系数
N = Ns * Z1 / m / a  # 每相串联导体数
qa = pi * d^2 / 4  # 导线截面积
ja = IN / (a * Nt * qa) # 定子绕组电密 A/mm^2
A = m * N * IN / pi / Di1 # 线负荷
Aj = A * ja

As = (B1+B)/2*(T - B1/2) + pi*(B1/2)^2/2 # 槽面积，不含槽口
Ai = 52 #todo
Ae = As - Ai
Sf = Ns*Nt*pi*(dc/2)^2/Ae # 槽满率

ts = pi*Di1/Z1  # 定子齿距
bt11 = pi*(Di1 + 2H)/Z1 - B
bt12 = pi*(Di1 + 2*(H + T - B1/2))/Z1 - B1
bmax = max(bt11, bt12)
bmin = min(bt11, bt12)
bt1 = (bmax + 2bmin)/3

ht1p = T - B1/2 + B1/2/3 #定子齿磁路计算长度
