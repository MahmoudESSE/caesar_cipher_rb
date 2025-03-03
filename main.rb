# frozen_string_literal: false

# @param str [String]
# @param shift [Integer]
# @return [String]
def ceasar_cipher(str, shift)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  str.split('').map do |c|
    if c =~ /\A[[:alpha:]]+\z/
      alpha_idx = alpha.find_index(c)
      if alpha[alpha_idx + shift].nil?
        alpha.reverse[alpha_idx + shift]
      else
        alpha[alpha_idx + shift]
      end
    else
      c
    end
  end.join
end

pp ceasar_cipher('What a string!', 5)
