# frozen_string_literal: true

def ftoc(degrees)
  (degrees - 32) * (5.0 / 9.0)
end

def ctof(degrees)
  (degrees / (5.0 / 9.0)) + 32
end
