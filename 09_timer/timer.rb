class Timer
    public
    def initialize
        @seconds = 0
        @print_hours = 0
        @print_minutes = 0
        @print_seconds = 0
    end

    def seconds
        return @seconds
    end

    def seconds=(seconds)
        @seconds = seconds

        @print_hours = seconds / 3600
        seconds = seconds % 3600
        @print_minutes = seconds / 60
        seconds = seconds % 60
        @print_seconds = seconds
    end

    def time_string
        return "#{pad(@print_hours)}:#{pad(@print_minutes)}:#{pad(@print_seconds)}"
    end

    private
    def pad(x)
        if x / 10 == 0
            return "0#{x}"
        else
            return "#{x}"
        end
    end
end