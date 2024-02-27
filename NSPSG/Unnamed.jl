clear()

x0 = [0.25; 0.5; 0.75; 1; 1.1]
x = [0.25:0.02:1.1;]
y1 = [94.08; 95.81;	96.40; 96.51; 96.53]
y2 = [94.26; 96.50; 97.14; 97.31; 97.33]
y11 = interp1(x0, y1, x,"spline")
y22 = interp1(x0, y2, x, "spline")
plot(x, y11, x, y22, linewidth=2)
xlabel("Power (% of rated power)")
ylabel("Efficiency (%)")
legend("p.f. = 0.8", "p.f. = 1")
grid("on")
grid("on", "minor")