include("./funs.jl")

x = 0.1:0.1:7

# y = rho(x)
# y = kdelta(1, 10, 5)

y = kv(x, 10)
z = kv(x, 10, 2)

plot(x, y, x, z, "o-")