def fibs(num)
  arr = [0,1]
  return [] if num == 0
  return [0] if num == 1
  return arr if num == 2
  for i in 3..num
    arr.push(arr[-1] + arr[-2])
  end
  return arr
end

def fibs_rec(num, arr=[0,1])
  puts "This was printed recursively"
  return [] if num == 0
  return [0] if num == 1
  return arr if arr.length == num
  arr.push(arr[-1] + arr[-2])
  fibs_rec(num, arr)
end

p fibs_rec(8)