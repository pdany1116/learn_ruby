# frozen_string_literal: true

require 'time'

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds
    hours = seconds / 3600
    seconds = seconds % 3600
    minutes = seconds / 60
    seconds = seconds % 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(value)
    return "0#{value}" if (value / 10).zero?

    value.to_s
  end
end
