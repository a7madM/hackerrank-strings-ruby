# frozen_string_literal: true

# problem: https://www.hackerrank.com/challenges/two-characters
class TwoCharacters
  def input
    gets.strip.to_i
    s = gets.strip
    s
  end

  def validate(s)
    return false if s.length == 1
    s.length
  end

  def solve_problem(string)
    return validate(string) if string.length <= 3
    result = remove_one_occurence string
    result = remove_consecutive result
    result = remove_odd_occurence result if result.length.even?
    result = remove_even_occurence result if result.length.odd?
    validate result
  end

  def remove_one_occurence(string)
    result = String.new(string)
    result.split(//).uniq.each do |ch|
      result = result.tr(ch, '') if string.count(ch) == 1
    end
    result
  end

  def remove_odd_occurence(string)
    result = String.new(string)
    result.split(//).uniq.each do |ch|
      result = result.tr(ch, '') if string.count(ch).odd?
    end
    result
  end


  def remove_even_occurence(string)
    result = String.new(string)
    result.split(//).uniq.each do |ch|
      result = result.tr(ch, '') if string.count(ch).even?
    end
    result
  end

  def remove_consecutive(string)
    puts string
    result = string.scan(/((\S)\2+)/).map(&:first)
    return string if result.empty?
    result.each do |i|
      string = string.tr(i[0], '')
    end
    remove_consecutive string
  end
end
