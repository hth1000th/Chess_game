class Rook
  def rule_to_move(from_x, from_y, to_x, to_y)
    if from_x == to_x
      true
    elsif from_y == to_y
      true
    else
      false
    end
  end
end
