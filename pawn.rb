<<<<<<< HEAD
class Pawn
  def rule_to_move(from_x, from_y, to_x, to_y)
    if (to_x == from_x) && ((to_y - from_y) == -1)
      true
    elsif (to_x == from_x) && ((to_y - from_y) == 1)
      true
    else
      false
    end
  end
end
=======
class Pawn
  def rule_to_move(from_x, from_y, to_x, to_y)
    if (to_x == from_x) && ((to_y - from_y) == -1)
      true
    elsif (to_x == from_x) && ((to_y - from_y) == 1)
      true
    else
      false
    end
  end
end
>>>>>>> f4373d99084344e764b26c9f4c79e8ee0bf3e0fb
