puts "Type a word or phrase:"
word = gets.chomp

puts "Pick a number from 1-10:"
num = gets.chomp.to_i

  if num > 10 || num < 1
    puts "Hey! I said pick a number from 1-10!"
    num = gets.chomp.to_i
    if num > 10 || num < 1
      puts "Game over, man!"
      exit
      end
    end

def caesar_cipher(word, num)
  word.each_byte do |i|

    if i < 97 && (i.ord + num) > 90 || (i.ord + num) > 122
      i = (i.ord - 26)
    end

  new_word = i.ord + num

    print new_word.chr.tr("\"$!#%&'()*", ' ')

  end
end

caesar_cipher(word, num)
