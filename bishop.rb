<<<<<<< HEAD
class Bishop
  def rule_to_move(from_x, from_y, to_x, to_y)
    if (to_x - from_x) == (to_y - from_y)
      true
    elsif (to_x - from_x) == (from_y - to_y)
      true
    else
      false
    end
  end
end
=======
class Bishop
  def rule_to_move(from_x, from_y, to_x, to_y)
    if (to_x - from_x) == (to_y - from_y)
      true
    elsif (to_x - from_x) == (from_y - to_y)
      true
    else
      false
    end
  end
end
>>>>>>> f4373d99084344e764b26c9f4c79e8ee0bf3e0fb
