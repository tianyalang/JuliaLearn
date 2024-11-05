using Plots

v = 0:30
B = 18.3
y = B*v.^0.55
p1 = plot(v, y, label="hw", xlabel="time", shape=:diamond, minorgrid=true)
plot!(v, v -> 12.12 - 1.16v + 11.6v.^0.5, color="green", ylabel="value")  # 原图追加

x = LinRange(0, 30, 80)
y = cos.(x) .* x
z = sin.(x) .* x
p2 = plot(x, y, z, shape=:circle)

# 子图
plot(p1, p2, layout= (2,1), size=(1000,800))

# savefig("./img/22.pdf")