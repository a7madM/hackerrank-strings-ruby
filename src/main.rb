require_relative('./two_characters')
require_relative('./caesar_cipher')
require_relative('./hackerrank_in_strings')

def hackerrank_in_string
  hackerrank_in_string = HackerrankInStrings.new
  hackerrank_in_string.input
end
hackerrank_in_string

def caesar_cipher
  caesar_cipher = CaesarCipher.new
  message, key = caesar_cipher.input
  encrypted = caesar_cipher.encrypt message, key
  puts encrypted
end
# caesar_cipher

def two_characters
  two_characters = TwoCharacters.new
  string = two_characters.input
  result = two_characters.solve_problem(string)
end
# two_characters
