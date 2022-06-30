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
    Celsius.new(degrees)
  end

  def self.from_fahrenheit(degrees)
    Fahrenheit.new(degrees)
  end
end

class Celsius < Temperature
  def initialize(degrees)
    super(:c => degrees)
  end
end

class Fahrenheit < Temperature
  def initialize(degrees)
    super(:f => degrees)
  end
end
