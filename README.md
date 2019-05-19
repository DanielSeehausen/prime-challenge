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


## Considerations

  - to print the default table of the first 10 primes, run `ruby index.rb`
  - to print tables of other primes, edit the `SOURCE_FILE` constant found in `index.rb`


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
