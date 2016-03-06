class Queen
  def rule_to_move(from_x, from_y, to_x, to_y)
    if (to_x - from_x) == (to_y - from_y)
      true
    elsif (to_x - from_x) == (from_y - to_y)
      true
    elsif from_x == to_x
      true
    elsif from_y == to_y
      true
    else
      false
    end
  end
end
