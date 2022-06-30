# frozen_string_literal: true

require_relative '../01_temperature/temperature'

class Temperature
  def initialize(options = {})
    @options = options
  end

  def in_fahrenheit
    if @options.key?(:c)
      ctof(@options[:c])
    else
      @options[:f]
    end
  end

  def in_celsius
    if @options.key?(:f)
      ftoc(@options[:f])
    else
      @options[:c]
    end
  end

  def self.from_celsius(degrees)
    Temperature.new(:c => degrees)
  end

  def self.from_fahrenheit(degrees)
    Temperature.new(:f => degrees)
  end
end
