require_relative "Piece"

class Rook < Piece
  include SlidingPiece

  attr_reader :color
  attr_accessor :pos
  def initialize(color, pos)
    super(color, pos)
  end
end
