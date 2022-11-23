def strike(text)
    return "<strike>#{text}</strike>"
end

def mask_article(s,texts)
    texts.each do |text|
        s.gsub!(text, strike(text))
    end
    s
end
