SN = 320  # 额定容量/kVA
UN = 400  # 额定电压/V
m = 3  # 相数
p = 5  # 极对数

Di1 = 530 # 定子内径/mm

Z1 = 120  # 定子槽数
y1 = 10   # 绕组节距
a = 10    # 并联支路数
Ns = 9+8  # 每槽导体数
Nt = 6    # 并绕根数
d = 1.4   # 裸导线直径/mm
dc = 1.479 # 导线直径/mm


IN = SN*1e3/sqrt(3)/UN # 额定电流/A
q = Z1/(2*p*m)  # 每极每相槽数
β = y1/(m*q)    # 节距系数
Kp = sin(β*pi/2)  # 短距系数
Kd = sin(pi/2/m)/q/sin(pi/2/m/q) # 绕组分布系数
Kdp = Kp*Kd  # 绕组系数
N = Ns*Z1/m/a  # 每相串联导体数
qa = pi*d^2/4  # 导线截面积
ja = IN/(a*Nt*qa) # 定子绕组电密 A/mm^2
A = m*N*IN/pi/Di1 # 线负荷
Aj = A*ja

