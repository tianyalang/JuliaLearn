using Plots

x = 0:0.1:20
y = cos.(x)
# xlabel("time")
# title("sin(x)")
plot(x, y, xlabel ="sin x")

