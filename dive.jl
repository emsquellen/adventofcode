function dive()
    sum([
        x[begin:end-2] == "down" ? parse(Int, x[end]) : -parse(Int, x[end]) for
        x in readlines("input2.txt") if x[begin:end-2] != "forward"
    ]) * sum([
        parse(Int, x[end]) for x in readlines("input2.txt") if x[begin:end-2] == "forward"
    ])
end

function dive2()
    aim = 0
    depth = 0
    horizontal = 0
    for ln in readlines("input2.txt")
        val = parse(Int, ln[end])
        if ln[begin:end-2] == "forward"
            horizontal += val
            depth += aim*val
        elseif ln[begin:end-2] == "up"
            aim -= val
        else 
            aim += val
        end
    end
    horizontal * depth
end
