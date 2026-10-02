# frozen_string_literal: true

def adult?(age)
  return false if age.nil?

  age >= 18
end

def describe(num)
  return 'unknown' if num.nil?

  if num.zero?
    'zero'
  elsif num.negative?
    'negative'
  else
    'positive'
  end
end
