require 'benchmark'
require './lib/Table'

arr = Array (1..10000)
table = Table.new(arr)

puts "custom", Benchmark.measure { table.calculate }
