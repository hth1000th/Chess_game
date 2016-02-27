class Pieces
  attr_reader :black_pieces
  def initialize(window)
    @window = window
    @black_pieces = { "L_black_rook"   => Gosu::Image.new(@window, "Images/black_rook.png", true),
                      "L_black_knight" => Gosu::Image.new(@window, "Images/black_knight.png", true),
                      "L_black_bishop" => Gosu::Image.new(@window, "Images/black_bishop.png", true),
                      "black_king"     => Gosu::Image.new(@window, "Images/black_king.png", true),
                      "black_queen"    => Gosu::Image.new(@window, "Images/black_queen.png", true),
                      "R_black_bishop" => Gosu::Image.new(@window, "Images/black_bishop.png", true),
                      "R_black_knight" => Gosu::Image.new(@window, "Images/black_knight.png", true),
                      "R_black_rook"   => Gosu::Image.new(@window, "Images/black_rook.png", true),
                      "black_pawn"     => Gosu::Image.new(@window, "Images/black_pawn.png", true) }

    @white_pieces = { "L_white_rook"   => Gosu::Image.new(@window, "Images/white_rook.png", true),
                      "L_white_knight" => Gosu::Image.new(@window, "Images/white_knight.png", true),
                      "L_white_bishop" => Gosu::Image.new(@window, "Images/white_bishop.png", true),
                      "white_king"     => Gosu::Image.new(@window, "Images/white_king.png", true),
                      "white_queen"    => Gosu::Image.new(@window, "Images/white_queen.png", true),
                      "R_white_bishop" => Gosu::Image.new(@window, "Images/white_bishop.png", true),
                      "R_white_knight" => Gosu::Image.new(@window, "Images/white_knight.png", true),
                      "R_white_rook"   => Gosu::Image.new(@window, "Images/white_rook.png", true),
                      "white_pawn"     => Gosu::Image.new(@window, "Images/white_pawn.png", true) }
  end

  def draw_pieces
    x = i = 35
    @black_pieces.each { |key, value|
      if key == "black_pawn"
        while i <= 525 do
          value.draw_rot(i,105,0,0)
          i += 70
        end
      else
        value.draw_rot(x,35,0,0)
      end
      x += 70 }

    x = i = 35
    @white_pieces.each { |key, value|
      if key == "white_pawn"
        while i <= 525 do
          value.draw_rot(i,455,0,0)
          i += 70
        end
      else
        value.draw_rot(x,525,0,0)
      end
      x += 70 }
  end
end
