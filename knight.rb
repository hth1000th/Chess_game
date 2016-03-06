<<<<<<< HEAD
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
=======
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
>>>>>>> f4373d99084344e764b26c9f4c79e8ee0bf3e0fb
