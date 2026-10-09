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

def show_block(&block)
  block
end

b = show_block { |x| x + 1 }

p b.class
p b.call(1)
p show_block

def map_twice(array, &)
  first = my_map(array, &)
  my_map(first, &)
end
