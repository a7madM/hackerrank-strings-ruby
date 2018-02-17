# frozen_string_literal: true

# https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem
class HackerrankInStrings
  HACKERRANK = 'hackerrank'
  def input
    q = gets.strip.to_i
    for a0 in (0..q - 1)
      s = gets.strip
      puts solve(s)
    end
  end

  def solve(input)
    HACKERRANK.each_char do |ch|
      index = input.index(ch)
      return 'NO' unless index
      input = input.slice(index + 1, input.length)
    end
    'YES'
  end
end
