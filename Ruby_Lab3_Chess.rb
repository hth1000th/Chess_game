class Game
  attr_accessor :board, :current_player

  @@num = 0

  def setup()
    nil
  end

  def promote(location, piece)
    if (piece =~ /^(king|queen|bishop|knight|rook|pawn)$/i)
      raise "Invalid input"
    end
    "bishop"
  end

  def take_turn()
    "white"
  end

  def switch_players()
    if(@@num%2 == 0)
      @@num = @@num + 1
      return "white"
    else
      @@num = @@num + 1
      return "black"
    end
  end

  def checkmate?()
    true
  end

  def check?()
    true
  end

  def valid_chess_move?(location1, location2)
  end
end

class Board < Game
  attr_accessor :piece, :locations

  def initialize()
    @locations = { 'A' => ["BR  ", "BKn ", "BB  ", "BKi ", "BQ  ", "BB  ", "BKn ", "BR  "],
                   'B' => ["BP  ", "BP  ", "BP  ", "BP  ", "BP  ", "BP  ", "BP  ", "BP  "],
                   'C' => ["+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   "],
                   'E' => ["+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   "],
                   'D' => ["+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   "],
                   'F' => ["+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   ", "+   "],
                   'G' => ["WP  ", "WP  ", "WP  ", "WP  ", "WP  ", "WP  ", "WP  ", "WP  "],
                   'H' => ["WR  ", "WKn ", "WB  ", "WKi ", "WQ  ", "WB  ", "WKn ", "WR  "], }
  end

  def ask(prompt)
    puts prompt
    return gets.chomp
  end

  def prompt_for_move()
    p "Current Turn:" + switch_players
    from = ask("From where?(eg, A1, B1 ... )")
    to = ask("To where?(eg, A1, B1 ... )")
    move(from, to)
    display()
  end

  def display()
    puts "    0   1   2   3   4   5   6   7"
    puts "  --------------------------------"

    for i in 'A'..'H'
      print i + " | "
      for j in 0..8
        print locations[i][j]
        if j == 7
          puts
          puts
        end
      end
    end
  end

  def move(from, to)
    from_alphabet = from.split("")[0]
    from_number = from.split("")[1].to_i
    to_alphabet = to.split("")[0]
    to_number = to.split("")[1].to_i

    from_piece = remove(from_alphabet, from_number)
    @locations[from_alphabet].insert(from_number, "+   ")
    remove(to_alphabet, to_number)
    @locations[to_alphabet].insert(to_number, from_piece)
  end

  def remove(alphabet, number)
    @locations[alphabet].delete_at(number)
  end

  def king_threatened?(location1, location2)
    true
  end

  def capture(location)
  end

  def what_is_in(locations)
  end
end
