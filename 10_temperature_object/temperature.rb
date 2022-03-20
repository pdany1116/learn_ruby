require_relative '../01_temperature/temperature'

class Temperature
    def initialize(options = {})
        @options = options
    end

    def in_fahrenheit
        if @options.key?(:c)
            return ctof(@options[:c])
        else
            return @options[:f]
        end
    end

    def in_celsius
        if @options.key?(:f)
            return ftoc(@options[:f])
        else
            return @options[:c]
        end
    end

    def self.from_celsius(degrees)
        return Temperature.new(:c => degrees)
    end

    def self.from_fahrenheit(degrees)
        return Temperature.new(:f => degrees)
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