require_relative 'main'

def test(string)
  words = fetch_words(string)
  boolean = %w(recoverable content faraday).all? do |word|
       words.include?(word)
  end
  puts boolean
end

test(File.read('DictionaryAnywhere.txt'))
