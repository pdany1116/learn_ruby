# frozen_string_literal: true

require 'time'

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(value)
    return "0#{value}" if value / 10 == 0

    value.to_s
  end
end
