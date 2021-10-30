# spec/caesar_cipher.rb
require './lib/caesar_cipher.rb'

  describe "#translate" do
    it "returns the caesar cipher for a small positive shift" do
      expect(translate('Zz', 5)).to eql('Ee')
    end

    it "returns the caesar cipher for a large positive shift" do
      expect(translate('Zz', 83)).to eql('Ee')
    end

    it "returns the caesar cipher for a small negative shift" do
      expect(translate('EE', -5)).to eql('ZZ')
    end

    it "returns the caesar cipher for a phrase with small positive shift" do
      expect(translate('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it "returns the caesar cipher for a phrase with a large positive shift" do
      expect(translate('Hello, World!', 75)).to eql('Ebiil, Tloia!')
    end

    it "returns the caesar cipher for a phrase with a large negative shift" do
      expect(translate('Hello, World!', -55)).to eql('Ebiil, Tloia!')
    end
  end


  