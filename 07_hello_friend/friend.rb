# frozen_string_literal: true

class Friend
  def initialize
  end

  def greeting(who = nil)
    return "Hello, #{who}!" if who

    'Hello!'
  end
end
