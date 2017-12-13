require_relative "Piece"

class King < Piece
  attr_reader :color
  attr_accessor :pos
  def initialize(color, pos)
    super(color, pos)
  end
end
