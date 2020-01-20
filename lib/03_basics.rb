def who_is_bigger(a, b, c)
    if a.nil? || b.nil? || c.nil?
        return "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    else
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(str)
    str.reverse.upcase.delete "LTA"
end

def array_42(ary)
    ary.include?(42)
end

def magic_array(ary)
    ary.flatten.uniq.select{|v| v % 3 != 0}.map{|v| v *= 2}.sort
end