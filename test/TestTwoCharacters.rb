require_relative('../src/TwoCharacters')
require ('test/unit')
class TestTwoCharacters < Test::Unit::TestCase

  def test_case_1
    string = "beabeefeab"

    twoCharacters = TwoCharacters.new
    result = twoCharacters.solve_problem(string)
    
    valid = twoCharacters.valid(result)
    assert_equal(true, valid)
    assert_equal("babab", result)
  end


  def test_case_2
    string = "a"
    twoCharacters = TwoCharacters.new
    result = twoCharacters.solve_problem(string)
    valid = twoCharacters.valid(result)
    assert_equal(false, valid)
    assert_equal("a", result)
  end

  def test_case_3
    string = "cwomzxmuelmangtosqkgfdqvkzdnxerhravxndvomhbokqmvsfcaddgxgwtpgpqrmeoxvkkjunkbjeyteccpugbkvhljxsshpoymkryydtmfhaogepvbwmypeiqumcibjskmsrpllgbvc"
    twoCharacters = TwoCharacters.new
    result = twoCharacters.solve_problem(string)
    puts result
    puts result.length
  end
end