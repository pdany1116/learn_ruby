def reverser
    array = yield.split
    [*0..array.length - 1].each do |i|
        array[i] = array[i].reverse
    end
    return array.join(" ")
end

def adder(to_add = 1)
    return yield + to_add
end

def repeater(count = 1)
    [*0..count - 1].each do 
        yield
    end
end