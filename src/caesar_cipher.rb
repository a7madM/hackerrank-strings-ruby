# https://www.hackerrank.com/challenges/caesar-cipher-1/problem

class CaesarCipher
  SMALL_LETTERS = [*('a'..'z')].freeze
  CAPITAL_LETTERS = [*('A'..'Z')]
  def input
    n = gets.to_i
    message = gets
    key = gets.strip.to_i

    [message, key]
  end

  def encrypt(message, key)
    encrypted = ''
    message.each_char do |ch|
      if SMALL_LETTERS.include? ch
        index = SMALL_LETTERS.index ch
        new_index = (index + key) % 26
        ch = SMALL_LETTERS[new_index]
      elsif CAPITAL_LETTERS.include? ch
        index = CAPITAL_LETTERS.index ch
        new_index = (index + key) % 26
        ch = CAPITAL_LETTERS[new_index]
      end
      encrypted << ch
    end
    encrypted
  end
end
