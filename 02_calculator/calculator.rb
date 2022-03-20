def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(array)
    total = 0
    array.each do |i|
        total += i
    end
    return total
end

def multiply(*args)
    case args.size
    when 1
        total = 1
        args[0].each do |i|
            total *= i
        end
        return total
    when 2
        return args[0] * args[1]
    else
        return "error"
    end
end

def raise(a, b)
    return a ** b
end

def factorial(n)
    if n == 0 || n == 1
        1
    end
    array = [*2..n]
    return multiply(array)
end