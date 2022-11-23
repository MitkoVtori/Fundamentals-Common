def count_multibyte_char(code)
    counter = 0
    code.each_char{c counter += 1 if c.bytesize  1}
    return counter
end
