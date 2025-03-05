def fibs(num)
  arr = [0,1]
  if num == 0
    return []
  elsif num == 1
    return [0]
  elsif num == 2
    return arr
  else
    for i in 3..num
      arr.push(arr[-1] + arr[-2])
    end
    return arr
  end
end

def fibs_rec(num, arr=[0,1])
  puts "This was printed recursively"
  if num == 0
    return []
  elsif num == 1
    return [0]
  elsif arr.length == num
    return arr
  else
    arr.push(arr[-1] + arr[-2])
    fibs_rec(num, arr)
  end
end

p fibs_rec(8)