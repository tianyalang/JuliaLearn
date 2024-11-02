using CSV;
using DataFrames;
using Plots

xx = CSV.read("./data/Winding Plot 3.csv", DataFrame)  # A,C 相电压时域波形
yy = CSV.read("./data/Winding Plot 4.csv", DataFrame)  # AC线电压频域波形 

t = xx[:, 1]*1e-3
X = xx[:, 2] - xx[:, 3]

# plot(t, X)
plot(yy[43:end,2], yy[43:end,3])
