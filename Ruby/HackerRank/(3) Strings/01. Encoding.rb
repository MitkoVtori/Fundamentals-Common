def transcode(string)
    new_string = string.force_encoding(Encoding::UTF_8)
    return new_string
end
