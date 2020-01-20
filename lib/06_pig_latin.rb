def translate_word(str)
    ind_premiere_voyl = /[aeiou]/i =~ str
    if !(ind_premiere_ponctu = /[.,?!;:]/ =~ str)
        ind_premiere_ponctu = 0
    end
    if ind_premiere_voyl == 0
        if (ind_premiere_ponctu != 0)
            ret = "#{str[0..ind_premiere_ponctu - 1]}ay#{str[ind_premiere_ponctu]}"
        else
            ret = "#{str[0..ind_premiere_ponctu - 1]}ay"
        end
        return ret
    else
        if /[Qq][Uu]/ =~ str
            ind_premiere_voyl += 1
        end
        ret = str[ind_premiere_voyl..ind_premiere_ponctu - 1]
        if (ind_premiere_ponctu != 0)
            ret << "#{str[0..ind_premiere_voyl - 1]}ay#{str[ind_premiere_ponctu]}"
        else
            ret << "#{str[0..ind_premiere_voyl - 1]}ay"
        end
        if str[0] >= 'A' && str[0] <= 'Z'
            ret= ret.downcase.capitalize
        end
        return ret
    end
end

def translate(str)
    ret = ""
    str.split(/ /).each_with_index do |word, i|
        if i > 0
            ret += " "
        end
        ret += "#{translate_word(word)}"
    end
    return ret
end