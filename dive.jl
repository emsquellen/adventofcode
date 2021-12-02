function dive()
    sum([
        x[begin:end-2] == "down" ? parse(Int, x[end]) : -parse(Int, x[end]) for
        x in readlines("input2.txt") if x[begin:end-2] != "forward"
    ]) * sum([
        parse(Int, x[end]) for x in readlines("input2.txt") if x[begin:end-2] == "forward"
    ])
end
