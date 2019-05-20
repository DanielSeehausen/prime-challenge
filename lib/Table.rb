require 'matrix'

class Table
  attr_reader :int_arr, :matrix

  def initialize(int_arr)
    @int_arr = int_arr
    @matrix = nil
  end

  def table_with_headers
    full_table = @matrix.map.with_index { |row, idx| row.unshift(@int_arr[idx]) }
    header = [0].concat(@int_arr)
    full_table.unshift(header)
  end

  def matrix
    @matrix || $stderr.puts("#{self.inspect}: has not been calculated succesfully")
  end

  def multiply
    @matrix = @int_arr.map do |multiplier|
      @int_arr.map {|multiplicant| multiplier * multiplicant }
    end
  end

  def to_s
    @matrix.each do |r|
      puts r.each { |p| p }.join(" ")
    end
  end

end
