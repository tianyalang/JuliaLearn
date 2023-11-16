
include("./funs.jl")

y = kv(6, 8, false)

# t = 0:0.1:7
# A = sin.(t)
# B = sin.(t .- 2 * pi / 3)
# C = sin.(t .- 4 * pi / 3)

# a1 = 0.5 .* sin.(t .- pi / 24)
# a2 = 0.5 .* sin.(t .- 3 * pi / 24)
# a3 = 0.5 .* sin.(t .- 5 * pi / 24)
# a4 = 0.5 .* sin.(t .- 7 * pi / 24)

# b1 = 0.5 .* sin.(t .- pi / 24 .-2*pi/3)
# b2 = 0.5 .* sin.(t .- 3 * pi / 24 .-2*pi/3)
# b3 = 0.5 .* sin.(t .- 5 * pi / 24 .-2*pi/3)
# b4 = 0.5 .* sin.(t .- 7 * pi / 24 .-2*pi/3)

# c1 = 0.5 .* sin.(t .- pi / 24 .- 4 * pi / 3)
# c2 = 0.5 .* sin.(t .- 3 * pi / 24 .- 4 * pi / 3)
# c3 = 0.5 .* sin.(t .- 5 * pi / 24 .- 4 * pi / 3)
# c4 = 0.5 .* sin.(t .- 7 * pi / 24 .- 4 * pi / 3)

# plot(t .* 180 / pi, [A B C a1 a2 a3 a4 b1 b2 b3 b4 c1 c2 c3 c4])

# y = rho(x)
# y = kdelta(1, 10, 5)

# y = kv(x, 10)
# z = kv(x, 10, 2)

# plot(x, y, x, z, "o-")

# lef(10,3,2,1.3,3,2.2)

# delta = 8E-3
# D = 540E-3
# Lef = 438E-3
# mu0 = 4E-7*pi
# Bdelta = 0.5595

# beta = 0.5


# Km = beta*pi*D*Lef*Bdelta^2/delta/2/mu0*1E-3

# G = 21800
# fg = 0.0643
# K = G/fg

# e0 = 0.25
# fm = Km*e0/(K - Km)
# Fq = K*fm

# D = 54
# L = 43.8
# e0 = 0.025
# delta0 = 0.8
# 30*D*L*e0/delta0