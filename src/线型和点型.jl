using Plots

ys = [ones(10)*i for i=1:6]
p1 = plot(ys, lw=3, ls=[:auto :solid :dash :dot :dashdot :dashdotdot]) 

p2 = plot([[i] for i=1:25], ms=10,
markershape=[:+ :auto :circle :cross :diamond :dtriangle :heptagon :hexagon :hline :ltriangle :none :octagon :pentagon :pixel :rect :rtriangle :star4 :star5 :star6 :star7 :star8 :utriangle :vline :x :xcross])

plot(p1, p2, layout = 2, size=(900,800))