require 'format_csv'
require 'pry'

describe FormatCsv do
  describe 'initialize' do
    it 'should initialize with a file' do
      expect(FormatCsv.new('input.csv')).to be_a(FormatCsv)
    end

  describe '#format' do
    it 'returns a string' do
     @file = FormatCsv.new('input.csv')
     @file.format
    end
  end
  end
end