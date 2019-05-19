class Writer

  def self.write_to_stdout(matrix)
    max = matrix.map { |row| row.max }.max
    cell_buffer = max.digits.count + 1

    matrix.each do |row|
      row.each do |val|
        padding = " " * (cell_buffer - val.digits.count)
        print padding, val
      end
      puts "\n"
    end
  end

end
