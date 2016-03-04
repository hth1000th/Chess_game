class King
  def rule_to_move(from_x, from_y, to_x, to_y)
    if ((to_x - from_x) == 1 || (to_x - from_x) == -1) &&
      ((to_y - from_y) == 1 || (to_y - from_y) == -1)
      true
    elsif (to_x == from_x) && (to_y - from_y == 1)
      true
    elsif (to_x == from_x) && (to_y - from_y == -1)
      true
    elsif (to_y == from_y) && (to_x - from_x == 1)
      true
    elsif (to_y == from_y) && (to_x -from_x == -1)
      true
    else
      false
    end
  end
end
