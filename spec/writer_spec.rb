require 'Writer'

describe Writer do

  describe 'write_to_stdout' do

    it 'prints each row of an array to stdout' do
      matrix = [
        [1, 2, 3],
        [2, 4, 6],
        [3, 6, 9]
      ]

      expected_output = " 1 | 2 3\n--------\n 2 | 4 6\n 3 | 6 9\n"
      expect { Writer.write_to_stdout(matrix) }.to output(expected_output).to_stdout
    end

    it 'dynamically sizes spacing' do
      matrix = [
        [1, 2, 10],
        [2, 11, 6],
        [120, 6, 9]
      ]

      expected_output = "   1 |   2  10\n----------------\n   2 |  11   6\n 120 |   6   9\n"
      expect { Writer.write_to_stdout(matrix) }.to output(expected_output).to_stdout
    end
  end

end

