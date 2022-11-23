def group_by_marks(marks, n)
    res = { "Failed" => [], "Passed" => [] }
    marks.group_by do |k, v|
        if v < n then
            res["Failed"].push([k, v])
        else
            res["Passed"].push([k, v])
        end
    end

    if res["Failed"].length == 0 then res.delete("Failed") end
    if res["Passed"].length == 0 then res.delete("Passed") end

    return res
end
