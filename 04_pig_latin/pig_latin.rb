Phonemes = ["qu"]

def translate(str)
    array = str.split
    [*0..array.length - 1].each do |i|
        while starts_with_consonant?(array[i]) do
            phoneme = starts_with_phoneme?(array[i])
            if phoneme.empty?
                array[i] += array[i][0]
                array[i] = array[i][1..-1]
            else
                array[i] += phoneme
                array[i].slice!(phoneme)
            end
        end
        array[i] += "ay"
    end
    return array.join(" ")
end

def starts_with_vowel?(word)
    return word =~ /^[aeiou]/
end

def starts_with_consonant?(word)
    return word =~ /^[^aeiou]/
end

def starts_with_phoneme?(word)
    Phonemes.each do |phoneme|
        ok = word =~ /^#{phoneme}/
        if ok
            return phoneme
        end
    end
    return ""
end
