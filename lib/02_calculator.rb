def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def multiply(a, b)
    a * b
end

def sum(ary)
    ary.sum
end

def power(a, b)
    j = 1
    b.times { j *= a}
    return j
end

def factorial(n)
    ret = 1
    if n == 0 || n == 1
        return 1
    else
        j = n
        n.times do
            ret *= j
            j -= 1
        end
    end
    return ret
end