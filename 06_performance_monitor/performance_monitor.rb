# frozen_string_literal: true

require 'time'

def measure(count = 1)
  start = Time.now

  [*0..count - 1].each { yield }

  (Time.now - start) / count
end
