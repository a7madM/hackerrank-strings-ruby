# frozen_string_literal: true

require_relative('./two_characters')
require_relative('./caesar_cipher')
def caesar_cipher
  caesar_cipher = CaesarCipher.new
  message, key = caesar_cipher.input
  encrypted = caesar_cipher.encrypt message, key
  puts encrypted
end

def testTwoCharacters
  twoCharacters = TwoCharacters.new
  string = twoCharacters.input

  result = twoCharacters.solve_problem(string)

  if twoCharacters.valid(result)
    puts result.length
  else
    puts 0
  end
end
caesar_cipher
# testTwoCharacters
