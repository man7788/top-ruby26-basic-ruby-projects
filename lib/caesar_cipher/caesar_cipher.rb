# frozen_string_literal: true

require_relative 'letters'

class CaesarCipher
  include Letters

  attr_accessor :string, :r_shift

  def initialize(string, r_shift)
    @string = string
    @r_shift = r_shift
  end

  def cipher_string
    display_ciphered_string(create_ciphered_string)
  end

  def create_ciphered_string
    shift_array = string.chars.map do |char|
      if char == ' '
        ' '
      elsif char == char.downcase
        lowercase[shift_lowercase(char)]
      else
        uppercase[shift_upperrcase(char)]
      end
    end

    shift_array.join
  end

  def shift_lowercase(char)
    (lowercase.index(char) + r_shift) % 26
  end

  def shift_upperrcase(char)
    (uppercase.index(char) + r_shift) % 26
  end

  private

  def display_ciphered_string(string)
    puts string
  end
end
