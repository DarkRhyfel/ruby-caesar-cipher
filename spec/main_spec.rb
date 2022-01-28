# frozen_string_literal: true

require './main'

RSpec.describe 'Caesar Chiper' do
  context 'Cipher a text' do
    it 'should shift each letter by 1' do
      expect(caesar_cipher('BCDEFG', 1)).to eql 'CDEFGH'
    end

    it 'should shift each letter by any amount' do
      expect(caesar_cipher('BCDEFGHIJK', 5)).to eql 'GHIJKLMNOP'
    end

    it 'should shift Z to A' do
      expect(caesar_cipher('Z', 1)).to eql 'A'
    end

    it 'should shift Z any amount starting from A' do
      expect(caesar_cipher('ZFGLE', 3)).to eql 'CIJOH'
    end
  end
end
