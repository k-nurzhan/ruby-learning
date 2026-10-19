# frozen_string_literal: true

def doubled(numbers)
  numbers.each { |n| n * 2 }
end

p doubled([3, 4])
puts 'yes' if doubled([])

def tag(words)
  words.map(&:upcase)
end

def shout(words)
  words.each { |w| puts w.upcase }
end

result = shout(%w[hi yo])
p result
p shout([])
