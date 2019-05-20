require 'Table'

describe Table do

  describe 'a valid instance' do

    let(:table) { Table.new([1, 2, 3]) }

    it 'instantiates with a single read only argument of an array' do
      expect(table.int_arr).to eq([1, 2, 3])
      expect{ table.int_arr = [] }.to raise_error(NoMethodError)
    end

    it 'instantiates with a nil read only matrix attribute' do
      expect { expect(table.matrix).to be_nil }.to output.to_stderr
      expect{ table.matrix = [] }.to raise_error(NoMethodError)
    end

    context 'when multiplied' do

      it 'populates the matrix attribute with a matrix of accurate dimensions' do
        table.multiply
        dimension = table.int_arr.length

        expect(table.matrix.length).to be dimension
        table.matrix.each { |row| expect(row.length).to be dimension }
      end

      context 'when an odd amount of elements are provided' do
        it 'populates the matrix attribute with correct values' do
          table = Table.new([1, 2, 3])
          table.multiply

          expect(table.matrix[0]).to eq([1, 2, 3])
          expect(table.matrix[1]).to eq([2, 4, 6])
          expect(table.matrix[2]).to eq([3, 6, 9])
        end
      end

      context 'when an even amount of elements are provided' do
        it 'populates the matrix attribute with correct values' do
          table = Table.new([1, 2, 3, 4])
          table.multiply

          expect(table.matrix[0]).to eq([1, 2, 3,  4])
          expect(table.matrix[1]).to eq([2, 4, 6,  8])
          expect(table.matrix[2]).to eq([3, 6, 9,  12])
          expect(table.matrix[3]).to eq([4, 8, 12, 16])
        end
      end
    end

  end
end
