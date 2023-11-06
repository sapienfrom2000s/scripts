require 'colorize'

def fetch_words(string)
  words_with_meaning = string.split("\n")
  words = words_with_meaning.map do |word_with_meaning|
    word = word_with_meaning.split(' ').first.tr('·', '') 
  end 
end

if __FILE__ == $PROGRAM_NAME
  words = fetch_words(File.read('/home/bla/Downloads/DictionaryAnywhere.txt')).join(' ')
  puts words
  puts "Words copied to clipboard".colorize(:green)
  system("echo #{words} | xclip -selection clipboard")
end
