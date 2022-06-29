# frozen_string_literal: true

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0

  array.each do |i|
    total += i
  end

  total
end
