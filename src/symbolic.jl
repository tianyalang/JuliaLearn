using Symbolics

@variables t x y
D = Differential(t)
z = t + t^2
expand_derivatives(D(z))
