# frozen_string_literal: true

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, count = 2)
  output = str

  [*2..count].each do
    output += " #{str}"
  end

  output
end
