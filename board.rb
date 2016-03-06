class Board
  def initialize(window)
    @window = window
  end

  def single_square(x,y,color)
    @window.draw_quad(x,y,color,x+70,y,color,x+70,y+70,color,x,y+70,color)
  end

  def draw_board
    gray = Gosu::Color.argb(0xff_808080)
    blue = Gosu::Color.argb(0xff_0000ff)
    i = j = num = 0
    while i <= 490 do
      while j <= 490 do
        if num%2 == 0
          single_square(j,i,gray)
        else
          single_square(j,i,blue)
        end
        j += 70
        num += 1
      end
      j = 0
      i += 70
      num -= 1
    end
  end
end
