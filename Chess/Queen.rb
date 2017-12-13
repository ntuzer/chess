require_relative "Piece"

class Queen < Piece
  include SlidingPiece

  attr_reader :color
  attr_accessor :pos
  def initialize(color, pos)
    super(color, pos)
  end


end
