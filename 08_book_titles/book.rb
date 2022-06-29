# frozen_string_literal: true

require_relative '../03_simon_says/simon_says'

class Book
  attr_accessor :title

  def initialize
  end

  def title
    titleize(@title)
  end
end
