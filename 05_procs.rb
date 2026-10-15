# frozen_string_literal: true

# rubocop:disable Style/Proc, Style/Lambda
pr = Proc.new { |a, b| "a=#{a.inspect} b=#{b.inspect}" }
la = lambda { |a, b| "a=#{a.inspect} b=#{b.inspect}" }
# rubocop:enable Style/Lambda, Style/Proc

p pr.call(1)
p pr.call(1, 2, 3)
p la.call(1, 2)

def with_proc
  pr = proc { return 10 }
  pr.call
  20
end

# rubocop:disable Style/RedundantReturn
def with_lambda
  la = -> { return 10 }
  la.call
  20
end
# rubocop:enable Style/RedundantReturn

p with_proc
p with_lambda

up = :upcase.to_proc

p up.class
p up.call('hi')
p %w[a b].map(&:upcase)
