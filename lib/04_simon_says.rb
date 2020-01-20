def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n = 2)
    ret = str + " #{str}" * (n - 1)
end

def start_of_word(str, n)
    str[0..(n - 1)]
end

def first_word(str)
    str.split.first
end

def titleize(str)
    str.split.map.with_index do |word, i|
        if (word == "and" || word == "the") && i != 0
            word
        else
            word.capitalize
        end
    end.join(" ")
end