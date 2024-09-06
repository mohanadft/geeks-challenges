
require 'set'

# Assuming each arr [1..n]

def missingNumber(arr) 
  len = arr.length + 1
  complete_set = Set.new((1..len).to_a.sample(len))

  arr.each do |n|
    complete_set.delete(n)
  end

  if complete_set.size > 0
    return complete_set.to_a[0]
  end

  return -1
end