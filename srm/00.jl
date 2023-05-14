R0,R1,R2,R3,R4,R5 = 5,10,15,20,25,30
Nr,Ns = 4, 6
α, β = deg2rad(30), deg2rad(32)
θᵣ, θₛ = 0, 0

function poleangle(N, slotangle)
    2pi/N - slotangle
end

wₛ = poleangle(Ns, α) * R3 
wᵣ = poleangle(Nr, β) * R2

function zpole0()

end

