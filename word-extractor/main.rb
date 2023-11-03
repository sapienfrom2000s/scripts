def fetch_words(string)
  words_with_meaning = string.split("\n")
  words = words_with_meaning.map do |word_with_meaning|
    word = word_with_meaning.split(' ').first.tr('·', '') 
  end 
end

words = fetch_words(File.read('/home/bla/Downloads/DictionaryAnywhere.txt')).join(' ')
system("echo #{words} | xclip -selection clipboard")
