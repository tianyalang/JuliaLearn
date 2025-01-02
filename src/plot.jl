using Plots

# 二维曲线
v = 0:30
B = 18.3
y = B*v.^0.55
p1 = plot(v, y, label="hw", xlabel="time", shape=:diamond, minorgrid=true)
plot!(v, v -> 12.12 - 1.16v + 11.6v.^0.5, color="green", ylabel="value")  # 原图追加

# 三维曲线
x = LinRange(0, 30, 80)
y = cos.(x) .* x
z = sin.(x) .* x
p2 = plot(x, y, z, shape=:circle)

# 空间曲面
function rosenbrock(x::Vector)
    tmp1 = ((x[1]+4)^2 + (x[2]+4)^2)^2
    tmp2 = ((x[1]-4)^2 + (x[2]-4)^2)^2
    exp(-tmp1/1000) + exp(-tmp2/1000) + 0.1*exp(-tmp1) + 0.1*exp(-tmp2)
end

default(size=(600,600), fc=:heat)
x, y = -15:0.1:15, -15:0.1:15
z = Surface((x,y)->rosenbrock([x,y]), x, y)
p3 = surface(x,y,z, linealpha = 1)

# 子图
plot(p1, p2, p3, layout= (3,1), size=(1000,800))

# savefig("./img/22.pdf")