# 定义函数
function srm(a,b)
    a*b+2
end

srm(2,4)

using StatsBase
# 创建一个样本数据集
x = [1, 2, 3, 4, 5]
y = [3, 6, 7, 8, 10]

# 调用 linreg 函数来进行线性回归
a, b = linreg(x, y)

# 输出回归模型的系数
println("斜率: ", a)
println("截距: ", b)
