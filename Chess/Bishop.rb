require_relative "Piece"

class Bishop < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
