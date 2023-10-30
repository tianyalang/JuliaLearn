
# include("./NSPSG/funs.jl")

# x = 0.1:0.1:7

# y = rho(x)
# y = kdelta(1, 10, 5)

# y = kv(x, 10)
# z = kv(x, 10, 2)

# plot(x, y, x, z, "o-")

lef(10,3,2,1.3,3,2.2)

delta = 8E-3
D = 540E-3
Lef = 438E-3
mu0 = 4E-7*pi
Bdelta = 0.5595

beta = 0.5


Km = beta*pi*D*Lef*Bdelta^2/delta/2/mu0*1E-3

G = 21800
fg = 0.0643
K = G/fg

e0 = 0.25
fm = Km*e0/(K - Km)
Fq = K*fm

D = 54
L = 43.8
e0 = 0.025
delta0 = 0.8
30*D*L*e0/delta0