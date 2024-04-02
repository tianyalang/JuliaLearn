# 时间序列 t 与信号序号 X 等长度
subplot(2, 1, 1)
plot(1000 * t, X) 
title("均值为0的随机噪声信号")
xlabel("t(milliseconds)")
ylabel("X(t)")

Y = fft(X)
# 计算双侧频谱 P2。然后基于 P2 和偶数信号长度 L 计算单侧频谱 P1。
L = length(X)
P2 = abs.(Y / L)
P1 = P2[1:Int(floor(L / 2)+1)]
P1[2:end-1] = 2 * P1[2:end-1]
# 定义频域 f 并绘制单侧幅值频谱 P1。与预期相符，由于增加了噪声，幅值并不精确等于 0.7 和 1。一般情况下，较长的信号会产生更好的频率近似值。
Fs = 1/(t[2] - t[1])
f = Fs * (0:Int(floor(L / 2))) / L
subplot(2, 1, 2)
plot(f, P1)
title("X(t) 的单侧振幅图")
xlabel("f (Hz)")
ylabel("|P1(f)|")