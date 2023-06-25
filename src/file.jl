# include("math.jl")
# srm(3,8)

# read from .txt
# The "do" block will automatically close the file when it's finished.
txt = open("./data/00.txt") do file
    read(file, String)
end;
println(txt)

# write string to .txt
s = "hello world!\n好人一生平安\n"
open("./data/01.txt", "w") do io
    write(io, s)
end

x = 233
open("./data/01.txt", "a") do io  # append
    write(io, string(x))          # 数值变量需转为字符串保存
end
