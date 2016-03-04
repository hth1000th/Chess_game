class Knight
  def rule_to_move(from_x, from_y, to_x, to_y)
    slope = (to_y - from_y) / (to_x - from_x).to_f
    if slope == -0.5 || slope == 0.5
      true
    elsif slope == -2 || slope == 2
      true
    else
      false
    end
  end
end
