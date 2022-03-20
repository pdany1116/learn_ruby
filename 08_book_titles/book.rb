require_relative '../03_simon_says/simon_says'

class Book
    public
    def title
        return @title
    end

    def title=(title)
        @title = titleize(title)
    end
end