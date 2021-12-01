function sonar_sweep()::Int
    L::Vector{Int} = []
    open("input1.txt") do file
        for ln in eachline(file)
            push!(L, parse(Int, chomp(ln)))
        end
    end
    prev = L[1]
    increases = 0
    for n in L[2:end]
        if n > prev
            increases += 1
        end
        prev = n
    end
    return increases
end