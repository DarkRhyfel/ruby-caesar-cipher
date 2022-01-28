# frozen_string_literal: true

def caesar_cipher(decrypted, shift)
  encrypted = decrypted.split('').map do |char|
    shift.times { |_| char.succ! } if char.match?(/\w/)
    char[-1]
  end

  encrypted.join('')
end

puts caesar_cipher(ARGV[0] || 'Test', ARGV[1].to_i || 2)
