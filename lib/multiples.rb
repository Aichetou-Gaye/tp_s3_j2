# frozen_string_literal: true

def is_multiple_of_3_or_5?(number) # rubocop:disable Naming/PredicatePrefix
  return false unless number.is_a?(Integer)

  (number % 3).zero? || (number % 5).zero?
end

def sum_of_3_or_5_multiples(final_number)
  return 0 unless final_number.is_a?(Integer)

  final_sum = 0

  (0...final_number).each do |number|
    final_sum += number if is_multiple_of_3_or_5?(number)
  end
  final_sum
end
