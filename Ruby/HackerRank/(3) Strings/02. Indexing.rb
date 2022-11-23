def serial_average(code)
    code = code.split('-')
    average = ((code[1].to_f + code[2].to_f)/2.0).round(2)
    return code[0] + "-" + average.to_s
end
