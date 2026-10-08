# frozen_string_literal: true

def show(*items)
  p items
  p items.class
end

def config(**opts)
  p opts
  p opts.class
end

options = { verbose: true, level: 2 }
p options[:verbose]
p options['verbose']

def log(*messages, **options)
  level = options.fetch(:level, 'info')
  "[#{level}] #{messages.join(' ')}"
end

def stars(*args, **opts)
  p args
  p opts
end
