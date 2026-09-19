# 示波器数据清理

# 读入csv数据
using CSV
df = CSV.read("scope_data.csv", DataFrame)