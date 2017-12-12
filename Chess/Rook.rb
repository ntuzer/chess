require_relative "Piece"

class Rook < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
