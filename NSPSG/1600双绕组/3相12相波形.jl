using Plots
# 按孟繁庆展开图

# 相电压
y3 = 390/sqrt(3)
y12 = 172
t = 0:0.1:8

A = y3*sin.(t)
B = y3*sin.(t .- 2 * pi / 3)
C = y3*sin.(t .- 4 * pi / 3)
plot(t, [A B C], label=["A" "B" "C"], lw=3)

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

plot!(t, [a1 b1 c1], label=["a1" "b1" "c1"], lw=2)
plot!(t, [a2 b2 c2], label=["a2" "b2" "c2"], lw=2, ls=:dash)
plot!(t, [a3 b3 c3], label=["a3" "b3" "c3"], lw=2, ls=:dashdot)
plot!(t, [a4 b4 c4], label=["a4" "b4" "c4"], lw=2, ls=:dashdotdot)
plot!(legend=:outerbottom, legendcolumns=3, size=(800,600))
plot!(gridalpha=0.5, minorgrid=true, minorgridalpha=0.2)




