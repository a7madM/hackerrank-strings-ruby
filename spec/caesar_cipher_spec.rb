require_relative '../src/caesar_cipher'

describe CaesarCipher do
  before(:each) do
    @caesar_cipher = CaesarCipher.new
  end
  context 'Encrypting' do
    it 'encrypt text' do
      encrypted = @caesar_cipher.encrypt 'middle-Outz', 2
      expect(encrypted).to eq 'okffng-Qwvb'
    end

    it 'encrypt text' do
      encrypted = @caesar_cipher.encrypt 'A', 2
      expect(encrypted).to eq 'C'
    end
  end
end
