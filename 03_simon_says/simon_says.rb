# frozen_string_literal: true

SMALL_WORDS = %w[and the over a an in of].freeze

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

def start_of_word(str, count = 1)
  str[0, count]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  words = str.capitalize.split

  words.each do |word|
    next if SMALL_WORDS.include?(word)

    word.capitalize!
  end

  words.join(' ')
end
