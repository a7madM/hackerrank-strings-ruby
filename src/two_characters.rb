# problem: https://www.hackerrank.com/challenges/two-characters

class TwoCharacters
  def initialize; end

  def input
    len = gets.strip.to_i
    s = gets.strip
    s
  end

  def valid(s)
    hash = {}
    return false if s.length == 1
    for i in 0...s.length - 1
      ch1 = s[i]
      ch2 = s[i + 1]

      hash[ch1] = ch1
      hash[ch2] = ch2

      return false if hash.length > 2

      return false if ch1 == ch2

    end
    true
  end

  def remove_solo_char(hash, string)
    result = String.new(string)
    hash.each do |k, v|
    end
    result
  end

  def solve_problem(string)
    return string if string.length == 1

    hash = {}
    solo_ch = ''
    result = String.new(string)

    for i in 0...string.length - 1
      ch1 = string[i]
      ch2 = string[i + 1]

      result = result.tr(ch1, '') if ch1 == ch2

      if hash.key?(ch1)
        hash[ch1] = hash[ch1] + 1
      else
        solo_ch = ch1
        hash[ch1] = 1
      end

    end

    ch2 = string[-1]
    if hash.key?(ch2)
      hash[ch2] = hash[ch2] + 1
    else
      hash[ch2] = 1
      solo_ch = ch1
    end

    result = result.tr(solo_ch, '')
    result
  end
end
