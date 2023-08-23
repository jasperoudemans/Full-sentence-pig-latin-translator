#!/usr/bin/env ruby


def get_multi_array(sentence)
    
    sentence_array = sentence.split(' ')

    if sentence_array[-1][-1] == '.' || '!' || '?'
        $punctuation = sentence_array[-1][-1]
        sentence_array[-1].chop!
    else
        sentence_array
    end

    puts
    
    new_sentence_arr = []
    sentence_array.each do |word|
        word_arr = word.split('')
        new_sentence_arr.push(word_arr)
        
    end
    new_sentence_arr
end

$fancy_arr = []

def pig_latin(word)
    vowels = ['a','e','i','o','u', 'y']
    
    first_vowel = word.map do |l|
        is_vowel = vowels.include?(l)
        is_vowel
    end
    start_index = first_vowel.find_index {|i| i==true}
    if start_index == nil 
        translated = word.join('') << "ay "
        $fancy_arr.push(translated)
    elsif
        start_index > 0 
        consonants = []
        start_index.times do 
            c = word.shift()
            consonants.unshift(c)
        end
        consonants.length.times do 
            d = consonants.pop
            word.push(d)
        end
        translated = word.join('') << "ay "
        $fancy_arr.push(translated)

    else 
        translated = word.join('') << "ay "
        $fancy_arr.push(translated) 
    end
end
        

puts "-----------------------------"
puts "| Ruby Pig Latin Translator |" 
puts "-----------------------------"

puts "Please enter a sentence to be given its translation into Pig Latin.."
selection = gets.chomp

matrix = get_multi_array(selection)

matrix.each do |word| 
    new_word = pig_latin(word)
end

puts '----'
$fancy_arr[-1].concat($punctuation)

print $fancy_arr.join().capitalize
puts
