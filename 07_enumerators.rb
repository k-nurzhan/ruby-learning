# frozen_string_literal: true

def first_negative(numbers)
  numbers.find(&:negative?)
end

p first_negative([3, -1, -5])
p first_negative([1, 2])

nums = [1, 2, 3]

p nums.select(&:even?)
p nums.reject(&:odd?)

puts 'has negative' if nums.select(&:negative?)
puts 'found negative' if nums.find(&:negative?)

p [2, 3, 4].reduce(1) { |acc, n| acc * n }
p [].reduce(0) { |acc, n| acc + n }
p([].reduce { |acc, n| acc + n })
