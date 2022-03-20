class Friend    
    def greeting(who = nil)
        if who == nil
            return "Hello!"
        end
        return "Hello, #{who}!"
    end
end