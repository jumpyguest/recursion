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

test = [105, 79, 100, 110]
p merge_sort(test)