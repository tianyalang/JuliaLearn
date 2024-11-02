using Plots

v = LinRange(0,30,50)
B = 18.3
y = B*v.^0.55
p1 = plot(v, y, label="hw", xlabel="time", shape=:circle)
plot!(v, v -> 12.12 - 1.16v + 11.6v.^0.5, color="green", ylabel="value")  # 原图追加

x = LinRange(0, 30, 80)
y = cos.(x) .* x
z = sin.(x) .* x
p2 = plot(x, y, z, shape=:circle)

plot(p1, p2, layout= 2, legend=false)

# savefig("./img/22.pdf")