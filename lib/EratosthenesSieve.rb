def get_primes_up_to(max_value)
  arr = (0..max_value).to_a
  arr[0] = arr[1] = nil

  arr.each do |value|
    next unless value

    square = value ** 2
    break if square > max_value

    (square).step(max_value, value) { |idx| arr[idx] = nil }
  end

  arr.compact
end
