# frozen_string_literal: true

def reverser
  yield.split.map!(&:reverse).join(' ')
end
