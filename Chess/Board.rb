require_relative 'Piece'
require_relative 'King'
require_relative 'Queen'
require_relative 'Bishop'
require_relative 'Knight'
require_relative 'Rook'
require_relative 'Pawn'
require_relative 'NullPiece'


class Board
  attr_reader

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @null = NullPiece.instance
    populate

  end

  def [](pos)
    row, column = pos
    @grid[row][column]
  end

  def []=(pos, move)
    row, column = pos
    @grid[row][column] = move
  end

  def dup

  end

  def move_piece!(from_pos, to_pos)

  end

  def move_piece(from_pos, to_pos)
    from_piece = @grid[from_pos[0]][from_pos[1]]
    to_piece = @grid[to_pos[0]][to_pos[1]]
    raise "Nothing there." if from_piece == @null
    raise "Can't move here." unless to_piece == @null #from_piece.valid_moves
    @grid[to_pos[0]][to_pos[1]], @grid[from_pos[0]][from_pos[1]] = @grid[from_pos[0]][from_pos[1]], @grid[to_pos[0]][to_pos[1]]

  end

  def checkmate?

  end

  protected

  def make_starting_grid

  end

  def find_king(color)

  end

  private

  def populate

    @grid = [
      [Rook.new('red'), Knight.new('red'), Bishop.new('red'), King.new('red'), Queen.new('red'), Bishop.new('red'), Knight.new('red'), Rook.new('red')],
      [Pawn.new('red'), Pawn.new('red'), Pawn.new('red'), Pawn.new('red'), Pawn.new('red'), Pawn.new('red'), Pawn.new('red'),Pawn.new('red')],
      [@null, @null, @null, @null, @null, @null, @null, @null],
      [@null, @null, @null, @null, @null, @null, @null, @null],
      [@null, @null, @null, @null, @null, @null, @null, @null],
      [@null, @null, @null, @null, @null, @null, @null, @null],
      [Pawn.new('blue'), Pawn.new('blue'), Pawn.new('blue'), Pawn.new('blue'), Pawn.new('blue'), Pawn.new('blue'), Pawn.new('blue'),Pawn.new('blue')],
      [Rook.new('blue'), Knight.new('blue'), Bishop.new('blue'), Queen.new('blue'), King.new('blue'), Bishop.new('blue'), Knight.new('blue'), Rook.new('blue')]]
  end
end
