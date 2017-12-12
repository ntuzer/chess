require_relative "Piece"

class Queen < Piece
  attr_reader :color

  def initialize(color)
    super(color)
  end
end
