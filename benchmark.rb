require 'benchmark'
require "./lib/Table"
require "./lib/Reader"
require './lib/EratosthenesSieve'

prime_files = {
  10 => { file: 'seed_data/10_primes.txt', max_required: 30 },
  100 => { file: 'seed_data/100_primes.txt', max_required: 542 },
  1000 => { file: 'seed_data/1000_primes.txt', max_required: 7920 },
  10000 => { file: 'seed_data/10000_primes.txt', max_required: 104730 },
}

prime_files.each do |amount, params|
  primes = nil

  puts "\nbenchmarking #{amount} primes..."
  puts "from file:"
  puts Benchmark.measure {
    primes = Reader.read_arr_from_file(params[:file])
  }

  puts "from generator:"
  puts Benchmark.measure {
    primes = get_primes_up_to(params[:max_required])
  }

  puts "calculation:"
  puts Benchmark.measure {
    table = Table.new(primes)
    table.multiply
  }
end
