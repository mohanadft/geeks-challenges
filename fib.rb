def fib(n, hash)
  if n <= 1
    return n
  end

  if hash.key?(n)
    return hash[n]
  else
    result = fib(n - 1, hash) + fib(n - 2, hash)
    hash[n] = result
    return result
  end
end
