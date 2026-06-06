# frozen_string_literal: true

require_relative '../lib/caesar_cipher/caesar_cipher'

describe CaesarCipher do
  describe '#create_ciphered_string' do
    context 'when a 4 white space string is initialized' do
      subject(:cipher) { described_class.new('    ', 10) }

      it 'return a 4 white space string string' do
        expect(cipher.create_ciphered_string).to eq('    ')
      end
    end

    context 'when a lowercase only string is initialized' do
      subject(:cipher) { described_class.new('john', 10) }

      it 'return a lowercase ciphered string' do
        expect(cipher.create_ciphered_string).to eq('tyrx')
      end
    end

    context 'when an uppercase only string is initialized' do
      subject(:cipher) { described_class.new('JOHN', 10) }

      it 'return an uppercase ciphered string' do
        expect(cipher.create_ciphered_string).to eq('TYRX')
      end
    end

    context 'when a mixed string is initialized' do
      subject(:cipher) { described_class.new('John Doe', 10) }

      it 'return a mixed ciphered string' do
        expect(cipher.create_ciphered_string).to eq('Tyrx Nyo')
      end
    end
  end

  describe '#shift_lowercase' do
    subject(:cipher) { described_class.new('John Doe', 10) }

    context 'when a lowercase character is right shifted by 10' do
      it 'return an index of 10 (without wrapping)' do
        expect(cipher.shift_lowercase('a')).to eq(10)
      end

      it 'return an index of 8 (wrapping)' do
        expect(cipher.shift_lowercase('y')).to eq(8)
      end
    end
  end

  describe '#shift_upperrcase' do
    subject(:cipher) { described_class.new('John Doe', 10) }

    context 'when an uppercase character is right shifted by 10' do
      it 'return an index of 10 (without wrapping)' do
        expect(cipher.shift_upperrcase('B')).to eq(11)
      end

      it 'return an index of 8 (wrapping)' do
        expect(cipher.shift_upperrcase('Z')).to eq(9)
      end
    end
  end
end
