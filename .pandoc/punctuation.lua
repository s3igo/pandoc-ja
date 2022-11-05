function Str(elem)
    text = elem.text
    text = string.gsub(text, '．', '。')
    text = string.gsub(text, '，', '、')
    return(pandoc.Str(text))
end
