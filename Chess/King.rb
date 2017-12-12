require_relative "Piece"

class King < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
