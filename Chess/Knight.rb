require_relative "Piece"

class Knight < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
