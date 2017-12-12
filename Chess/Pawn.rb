require_relative "Piece"

class Pawn < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
