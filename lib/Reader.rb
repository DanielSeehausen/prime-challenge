class Reader

  def self.read_arr_from_file(path)
    File.read(path).split("\n").map(&:to_i)
  end

end
