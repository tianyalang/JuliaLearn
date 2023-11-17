# 按孟繁庆展开图

# 相电压
y3 = 390/sqrt(3)
y12 = 172

t = 0:0.1:7
A = y3*sin.(t)
B = y3*sin.(t .- 2 * pi / 3)
C = y3*sin.(t .- 4 * pi / 3)

a1 = y12*sin.(t .- pi / 24)
a2 = y12* sin.(t .- 3 * pi / 24)
a3 = y12* sin.(t .- 5 * pi / 24)
a4 = y12* sin.(t .- 7 * pi / 24)

b1 = y12* sin.(t .- pi / 24 .-2*pi/3)
b2 = y12* sin.(t .- 3 * pi / 24 .-2*pi/3)
b3 = y12* sin.(t .- 5 * pi / 24 .-2*pi/3)
b4 = y12* sin.(t .- 7 * pi / 24 .-2*pi/3)

c1 = y12* sin.(t .- pi / 24 .- 4 * pi / 3)
c2 = y12* sin.(t .- 3 * pi / 24 .- 4 * pi / 3)
c3 = y12* sin.(t .- 5 * pi / 24 .- 4 * pi / 3)
c4 = y12* sin.(t .- 7 * pi / 24 .- 4 * pi / 3)

plot(t .* 180 / pi, [A B C a1 a2 a3 a4 b1 b2 b3 b4 c1 c2 c3 c4])




