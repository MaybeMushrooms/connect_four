require 'pry'

class Board
  def initialize
    @hash_grid = {  "A" => [".",".",".",".",".","."],
                    "B" => [".",".",".",".",".","."],
                    "C" => [".",".",".",".",".","."],
                    "D" => [".",".",".",".",".","."],
                    "E" => [".",".",".",".",".","."],
                    "F" => [".",".",".",".",".","."],
                    "G" => [".",".",".",".",".","."] }
  end

  def grid
    @hash_grid.values.transpose.reverse
  end

  def render
    rendered_rows = grid.map do |row|
      row.join
    end
    key_string = @hash_grid.keys.join
    value_string = rendered_rows.join("\n")
    "#{key_string} \n#{ value_string}"
  end

  def player_one_move(column)
    selected_column = @hash_grid[column]

    space = selected_column.find do |blank_space|
    blank_space == '.' 
    end
    space.replace 'X'
  end

  def computer_move
    random_letter = @hash_grid.keys.sample
    space = @hash_grid[random_letter].find do |blank_space|
      blank_space == '.'
    end
    space.replace 'o'
  end
end

