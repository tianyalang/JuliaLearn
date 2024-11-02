using Plots
using FFTW

# 采样频率为 1 kHz，信号持续时间为 1.5 秒。
Fs = 1000
T = 1 / Fs
L = 1500
t = T * collect(0:L-1)

#构造一个信号，其中包含幅值为 0.7 的 50 Hz 正弦量和幅值为 1 的 120 Hz 正弦量。
S = 0.7 * sin.(2 * pi * 50 * t) + sin.(2 * pi * 120 * t) + 0.5*sin.(2*pi*300*t.+pi/6)
#用均值为零、方差为 0.5 的白噪声扰乱该信号。
X = S + 0.5 * randn(size(t))

# 时间序列 t 与信号序号 X 等长度
p1 = plot(t, X) 
title!("均值为0的随机噪声信号")
xlabel!("t(milliseconds)")
ylabel!("X(t)")

Y = fft(X)
# 计算双侧频谱 P2。然后基于 P2 和偶数信号长度 L 计算单侧频谱 P1。
L = length(X)
P2 = abs.(Y / L)
P1 = P2[1:Int(floor(L / 2)+1)]
P1[2:end-1] = 2 * P1[2:end-1]
# 定义频域 f 并绘制单侧幅值频谱 P1。与预期相符，由于增加了噪声，幅值并不精确等于 0.7 和 1。一般情况下，较长的信号会产生更好的频率近似值。
f = Fs * (0:Int(floor(L / 2))) / L

p2 = plot(f, P1)
title!("X(t) 的单侧振幅图")
xlabel!("f (Hz)")
ylabel!("|P1(f)|")

plot(p1, p2, layout= 2, legend=false)