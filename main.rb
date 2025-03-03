# frozen_string_literal: true

# @param str [String] input string to be encrypted
# @param shift [Integer] number of positions to shift characters
# @return [String] encrypted string
def caesar_cipher(str, shift)
  shift %= 26
  str.chars.map { |char| shift_char(char, shift) }.join
end

# @param char [String] character to shift
# @param shift [Integer] number of positions to shift by
# @return [String] shifted character
def shift_char(char, shift)
  return char unless char =~ /[A-Za-z]/

  base = char =~ /[a-z]/ ? 'a'.ord : 'A'.ord
  ((char.ord - base + shift) % 26 + base).chr
end

pp caesar_cipher('What a string!', 5)
pp caesar_cipher('Hello, World!', 3)
