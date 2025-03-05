# recursion

This repository contains solutions for the recursion project.
1. Fibonacci generator using iteration and recursion.
2. Merge-sort implementation using recursion.

## Fibonacci generator

### Iteration solution
```ruby
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
```

### Recursion solution
```ruby
def fibs_rec(num, arr=[0,1])
  puts "This was printed recursively"
  return [] if num == 0
  return [0] if num == 1
  return arr if arr.length == num
  arr.push(arr[-1] + arr[-2])
  fibs_rec(num, arr)
end
```

## Merge-sort implementation

### Recursion solution

```ruby
def merge_sort(array)
  if array.size == 1
    return array
  else
    mid = array.size / 2
    array1 = merge_sort(array[0..mid-1])
    array2 = merge_sort(array[mid..-1])
    merge(array1, array2)
  end
end

def merge(array1, array2)
  result = []
  loop do
    if array1[0] < array2[0]
      result << array1[0]
      array1.shift
    else
      result << array2[0]
      array2.shift
    end
    break if array1.empty? || array2.empty?
  end
  result + array1 + array2
end
```