# 采样频率为 1 kHz，信号持续时间为 1.5 秒。
Fs = 1000
T = 1 / Fs
L = 1500
t = (0:L-1) * T

#构造一个信号，其中包含幅值为 0.7 的 50 Hz 正弦量和幅值为 1 的 120 Hz 正弦量。
S = 0.7 * sin.(2 * pi * 50 * t) + sin.(2 * pi * 120 * t)
#用均值为零、方差为 4 的白噪声扰乱该信号。
X = S + 2 * randn(size(t))


plot(1000 * t[1:100], X[1:100])
title("均值为0的随机噪声信号")
xlabel("t(milliseconds)")
ylabel("X(t)")