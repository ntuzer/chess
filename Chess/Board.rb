require_relative 'Piece'
require_relative 'King'
require_relative 'Queen'
require_relative 'Bishop'
require_relative 'Knight'
require_relative 'Rook'
require_relative 'Pawn'
require_relative 'NullPiece'
require_relative 'Display'

require 'byebug'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @null = NullPiece.instance
    populate
  end

  def in_bounds?(pos)
    self[pos].nil?
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
    @grid[from_pos][to_pos] = queen
    queen.pos = [from_pos, to_pos]
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

    pieces = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
    pieces.each_with_index do |piece, i |
      @grid[0][i] = piece.new(:red, [0,i] )
      @grid[1][i] = Pawn.new(:red, [1,i] )
      @grid[6][i] = Pawn.new(:cyan, [6,i] )
      @grid[7][i] = piece.new(:cyan, [7,i] )
    end

    4.times do |i|
      8.times do |j|
        @grid[i+2][j] = NullPiece.instance
      end
    end
  end

end



b = Board.new
# debugger
d = Display.new(b)
d.print_board
