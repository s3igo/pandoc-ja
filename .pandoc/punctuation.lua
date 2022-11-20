function Str(elem)
    comma = string.gsub(elem.text, '、', '，')
    comma_period = string.gsub(comma, '。', '．')

    return pandoc.Str(comma_period)
end
