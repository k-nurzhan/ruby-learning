# frozen_string_literal: true

def wrap
  puts '['
  yield
  puts ']'
end

wrap { puts 'a' }

wrap do
  puts 'b'
  puts 'c'
end

wrap do
  puts 'a'
  puts 'b'
  puts 'c'
end

# rubocop:disable Style/MapIntoArray
def my_map(array)
  raise ArgumentError, 'block required' unless block_given?

  result = []
  array.each { |item| result << yield(item) }
  result
end
# rubocop:enable Style/MapIntoArray

p my_map([1, 2, 3]) { |n| n * 10 }
p my_map(%w[a b], &:upcase)
p my_map([]) { |n| n + 10 }
