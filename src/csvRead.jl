using CSV;
using DataFrames;
xx = CSV.read("./data/Winding Plot 3.csv", DataFrame)  # A,C 相电压时域波形
yy = CSV.read("./data/Winding Plot 4.csv", DataFrame)  # AC线电压频域波形 

t = xx[:, 1]
X = xx[:, 2] - xx[:, 3]

subplot(2,1,1)
plot(t, X)
subplot(2,1,2)
plot(yy[3:end,2], yy[3:end,3])
