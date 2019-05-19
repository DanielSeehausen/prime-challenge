require 'Reader'

describe Reader do

  describe 'read_arr_from_file' do

    it 'returns an accurate array from a file of primes' do
      result = Reader.read_arr_from_file('./seed_data/10_primes.txt')

      expect(result).to be_a(Array)
      expect(result.length).to be(10)
      expect(result).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end

end

