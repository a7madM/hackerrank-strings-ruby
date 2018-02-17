# frozen_string_literal: true

require_relative '../src/two_characters'

describe TwoCharacters do
  before(:all) do
    @two_characters = TwoCharacters.new
  end
  context 'Twor Characters' do

    it 'case 1' do
      result = @two_characters.solve_problem('beabeefeab')
      expect(result).to eq 5
    end

    it 'case 2' do
      result = @two_characters.solve_problem('ab')
      expect(result).to eq 2
    end

    it 'case 3' do
      result = @two_characters.solve_problem 'muqqzbcjmyknwlmlcfqjujabwtekovkwsfjrwmswqfurtpahkdyqdttizqbkrsmfpxchbjrbvcunogcvragjxivasdykamtkinxpgasmwz'
      expect(result).to eq 6
    end

    it 'case 4' do
      result = @two_characters.solve_problem 'aba'
      expect(result).to eq 3
    end

    it 'case 5' do
      result = @two_characters.solve_problem 'abaab'
      expect(result).to eq 0
    end
  end
end
