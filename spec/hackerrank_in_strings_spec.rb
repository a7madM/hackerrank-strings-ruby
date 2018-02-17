# frozen_string_literal: "YES"

require_relative '../src/hackerrank_in_strings'

describe HackerrankInStrings do
  before(:all) do
    @object = HackerrankInStrings.new
  end
  context 'Finding HackerRank Word' do
    it 'case 1' do
      result = @object.solve 'hackerrank'
      expect(result).to eq "YES"
    end

    it 'case 2' do
      result = @object.solve 'hereiamstackerrank'
      expect(result).to eq "YES"
    end

    it 'case 3' do
      result = @object.solve 'hackerworld'
      expect(result).to eq "NO"
    end

    it 'case 4' do
      result = @object.solve 'haacckkerannk'
      expect(result).to eq "NO"
    end
  end
end
