function rho(t, material=1)
    # calculate the electrical resistivity of materials at different temperatures
    # input:
    #   t: temperature, support Vector input
    #   material: 1 for Copper (default); 2 for Aluminium
    # output:
    #   y: electrical resistivity. Unit: ohm.mm^2/m
    if material == 1
        rho0 = 0.0164   # 0°C 电阻率, Unit: ohm.mm^2/m
        alpha = 4.3E-3  # 电阻温度系数, Unit: /°C
    else
        rho0 = 0.0254
        alpha = 4.7E-3
    end
    y = rho0 .* (1 .+ alpha .* t)
end


function kdelta(delta, t, b0, slottype=1)
    # 定转子表面开槽造成气隙磁位降比光滑时要大，用气隙系数来反映此影响
    # input:
    #   delta: 气隙长度
    #   t: 齿宽; 3个输入变量单位统一即可
    #   b0: 槽口宽
    #   slottype: 1 for 开口槽; 2 for 半闭口槽,半开口槽
    # output:
    #   y: 气隙系数; 无单位
    x = b0./delta
    if slottype == 1
        gamma = x.^2 ./ (5 .+ x)
    else
        gamma = x.^2 ./(4.4 .+ 0.75 .*x) 
    end
    y = t./(t .-gamma .*delta)
end


function kv(delta, bv, isalign=true)
    # 径向通风道引起铁芯长度的损失系数, 用于铁芯有效长度的计算
    # input:
    #   bv: 通风道宽
    #   delta: 气隙长度
    #   isalign: true:定转子通风道对齐; false:定转子通风道不对齐
    x = bv ./ delta
    if isalign
        x = 2 .* x
    end
    y = x ./ (5 .+ x)
end



function lef(lt, delta, nv1=0, bv1p=0, nv2=0, bv2p=0)
    # 铁芯有效长度、计算长度
    # input: lt
    if nv1 == 0
        return lt + 2delta
    else
        return lt - nv1 * bv1p - nv2 * bv2p
    end
end


function kp(y, tau, nu)
    # 节距因数
    # input:
    #   y:节距
    #   tau:极距
    #   nu:谐波次数, 1,3,5...
    y = sind(nu*y/tau*90)
end

function kd(q, alpha, nu)
    # 绕组分布因数
    # input:
    #   q:每极每相槽数
    #   alpha:每槽所占电角度
    #   nu: 谐波次数, 1,3,5...
    x = nu*alpha/2
    y = sin(q*x)/sin(x)/q
end

function flatWireArea(width, height)
    #= 扁线面积计算
    input:
        width:宽边/mm
        height:窄边/mm
    =#
    if height <= 1
        r = height/2
    elseif height <= 1.6
        r = 0.5
    elseif height < 2.3
        r = 0.65
    elseif height < 3.6
        r = 0.8
    else
        r = 1
    end
    S = width*height - (4-pi)*r^2
end