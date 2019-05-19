class Writer

  def self.print_row(row, cell_buffer)
    row.each_with_index do |val, idx|
      if idx == 1
        print " |"
      end
      padding = " " * (cell_buffer - val.digits.count)
      print padding, val
    end
    puts "\n"
  end

  def self.write_to_stdout(matrix)
    max = matrix.map { |row| row.max }.max
    cell_buffer = max.digits.count + 1

    matrix.each_with_index do |row, idx|
      if idx == 1
        print "-" * (cell_buffer * row.count + cell_buffer), "\n"
      end

      self.print_row(row, cell_buffer)
    end
  end

end
