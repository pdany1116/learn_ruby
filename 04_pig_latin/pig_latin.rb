# frozen_string_literal: true

PHONEMES = %w[qu].freeze

def translate(str)
  str.split.map! { |word| translate_word(word) }.join(' ')
end

def translate_word(word)
  while starts_with_consonant?(word)
    phoneme = extract_phoneme(word)

    if phoneme.empty?
      word += word[0]
      word = word[1..-1]
    else
      word += phoneme
      word.slice!(phoneme)
    end
  end

  "#{word}ay"
end

def starts_with_consonant?(word)
  word =~ /^[^aeiou]/
end

def extract_phoneme(word)
  PHONEMES.each do |phoneme|
    return phoneme if word =~ /^#{phoneme}/
  end

  ''
end
