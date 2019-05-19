require "./lib/Table"
require "./lib/Reader"
require "./lib/Writer"

SOURCE_FILE = "seed_data/10_primes.txt"

def main
  primes = Reader.read_arr_from_file(SOURCE_FILE)
  table = Table.new(primes)
  table.multiply
  Writer.write_to_stdout(table.table_with_headers)
end

main
