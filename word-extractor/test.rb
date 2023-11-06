require_relative 'main'

def test(string)
  words = fetch_words(string)
  boolean = %w(recoverable content faraday).all? do |word|
       words.include?(word)
  end
  (boolean and '.'.colorize(:green)) or
    "Expected did not match actual"
end

puts test(File.read('DictionaryAnywhere.txt'))

