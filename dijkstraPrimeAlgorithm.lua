function primes(N)
  local P, Q, x, limit = {2}, {}, 1, 4
  local is_prime = function(x)
    for k = 2, #Q do
      if x > Q[k] then Q[k] = Q[k] + P[k] end
      if x == Q[k] then return false end
    end
    return true
  end
  while #P < N do
    repeat
      x = x + 2
      if x >= limit then
        Q[#Q+1], limit = limit, P[#Q+2]^2
      end
    until is_prime(x)
    P[#P+1] = x
  end
  return P
end

function main()
  for _, p in ipairs(primes(10)) do print(p) end
end
main()