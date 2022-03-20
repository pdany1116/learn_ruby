Small_words = ["and", "the", "over", "a", "an", "in", "of"]

def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, count = 2)
    output = str
    [*2..count].each do |i|
        output += " " + str
    end
    return output
end

def start_of_word(str, count = 1)
=begin
    output = str[0]
    [*1..count - 1].each do |i|
        output += str[i]
    end
    return output
=end
    return str[0, count]
end

def first_word(str)
    array = str.split
    return array[0]
end

def titleize(str)
    array = str.split
    array[0][0] = array[0][0].upcase
    [*1..array.length - 1].each do |i|
        next if small_word?(array[i])
        array[i][0] = array[i][0].upcase
    end
    return array.join(" ")
end

def small_word?(str)
    return Small_words.include?(str)
end