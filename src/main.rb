require_relative('./two_characters')
require_relative('./caesar_cipher')
def caesar_cipher
  caesar_cipher = CaesarCipher.new
  message, key = caesar_cipher.input
  encrypted = caesar_cipher.encrypt message, key
  puts encrypted
end

def two_characters
  two_characters = TwoCharacters.new
  string = two_characters.input
  result = two_characters.solve_problem(string)
end
# caesar_cipher
two_characters
