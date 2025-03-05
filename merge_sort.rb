def merge_sort(array)
  if array.size == 1
    return array
  else
    mid = array.size / 2
    left = array.slice(0..mid-1)
    right = array.slice(mid..-1)
    array1 = merge_sort(left)
    array2 = merge_sort(right)
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
    break if array1.size == 0 || array2.size == 0
  end
  if array1.size != 0
    array1.each do |value|
      result << value
    end
  elsif array2.size != 0
    array2.each do |value|
      result << value
    end
  end
  result
end

test = [105, 79, 100, 110]
p merge_sort(test)