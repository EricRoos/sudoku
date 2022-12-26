class Box
  def initialize
    @possible_values = [1,2,3,4,5,6,7,8,9]
    @final_value = nil
    @elimate_count = 0
  end

  def eliminate_possible_value(value)
    @eliminate_count += 1
    @possible_values.delete_at(value - 1)
  end

  def deduce_value
    return unless @eliminate_count == 8
    @final_value = @possible_values.detect { |v| !v.nil? }
  end
end

class Puzzle
  def @initialize
    @grid = []
    (0..81).each do
      @grid << Box.new
    end
  end

  def write_value_at(row, col)
    pos = (row * 8) + col
  end
end
