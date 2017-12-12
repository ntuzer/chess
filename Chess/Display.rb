require_relative 'Cursor'
require 'colorize'
# require 'colorized_string'

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def print_board
    curs_pos = @cursor.cursor_pos

    puts "-------------------------------------------------------------------------"
    @board.grid.each_with_index do |row, j|
      #puts "|        |        |        |        |        |        |        |        |"
      row.each_with_index do |square, i|
        print "|"
        empty= "        "
        if [j, i] == curs_pos
          background = :yellow
        elsif j.even? || j == 0
          (i.even? || i == 0) ? background = :light_black : background = :light_white
        else
          (i.even? || i == 0) ? background = :light_white : background = :light_black
        end

        print "#{empty.colorize(:background => background)}"
      end
      puts "|"

      print "|"
      row.each_with_index do |square, i|
        tile = print_style(square)

        if [j, i] == curs_pos
          background = :yellow
        elsif j.even? || j == 0
          (i.even? || i == 0) ? background = :light_black : background = :light_white
        else
          (i.even? || i == 0) ? background = :light_white : background = :light_black
        end

        print "#{tile.colorize(:background => background)}|"
      end
      puts " "

      row.each_with_index do |square, i|
        print "|"
        empty= "        "
        if [j, i] == curs_pos
          background = :yellow
        elsif j.even? || j == 0
          (i.even? || i == 0) ? background = :light_black : background = :light_white
        else
          (i.even? || i == 0) ? background = :light_white : background = :light_black
        end

        print "#{empty.colorize(:background => background)}"
      end
      puts "|"
      #puts "|        |        |        |        |        |        |        |        |"


      puts "-------------------------------------------------------------------------"
    end
  end

  def print_style(piece)
    name = piece.class.name.to_s
    case name.length
    when 6
      return " #{name.colorize(piece.color)} "
    when 5
      return " #{name.colorize(piece.color)}  "
    when 4
      return "  #{name.colorize(piece.color)}  "
    when 9
      return "        "
    end
  end

end
