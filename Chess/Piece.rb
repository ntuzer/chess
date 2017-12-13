class Piece
  attr_reader :color
  attr_accessor :pos

  def initialize(color, pos)
    @color = color
    @pos = pos
  end

  def to_s
  end

  def symbol
  end

  def valid_moves
  end

  private

  def move_into_check(to_pos)
  end
end

module SlidingPiece
  def moves(board)

  end

  def move_dir
    case self.class.name
    when Queen
      horizontal_dirs & diagonal_dirs
    when Rook
      horizontal_dirs
    when Bishop
      diagonal_dirs
    end
  end

  def horizontal_dirs

  end

  def diagonal_dirs

  end
end

module SteppingPiece
  def moves

  end
end
