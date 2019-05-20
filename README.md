## Getting Started

**system dependencies:**
 - Ruby 2.5.3

**setup:**
 - `bundle install` (if you do not have bundler: `gem install bundler`)

**running the test suite:**
 - `rspec`


## Running the application

  - to print the default table of the first 10 primes, run `ruby index.rb`
  - to print tables of other primes, edit the `SOURCE_FILE` constant found in `index.rb`


## Discussion

This application separates the code into three distinct concerns designed for extensibility:
  - the `Reader` class, which is responsible for consuming and serializing input
  - the `Table` class, which is responsible the business logic/calculations
  - the `Writer` class, which is responsible the outputting a representation of the table

The performance bottlenecks in the application are in the I/O operations, as well as the population of the table (matrix) itself. After poking around and benchmarking several options, one of the simplest solutions was demonstrating promising performance over alternatives and has been implemented in the `Table.multiply` method. Surprisingly, the stdlib `Matrix` class was performing poorly compared to the solution implemented.

Understanding this, there remain a lot of opportunities to speed up the performance of the application!


## Prompt

Write a program that prints out a multiplication table of the first 10 prime numbers.
The program must run from the command line and print one table to STDOUT.
The first row and column of the table should have 10 primes, with each cell containing the
product of the primes for the corresponding row and column.

Notes:
- Consider complexity. How fast does your code run? How does it scale?
- Consider cases where we want more than N primes.
- Do not use the Prime class from stdlib (write your own code).
- Write tests. Demonstrate TDD/BDD.
