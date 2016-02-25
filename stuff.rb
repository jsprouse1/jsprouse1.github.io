
# Find the most frequently occurring number in an array (mode). 
# If array contains more than one mode value, it returns the first mode

def mode(nums)
  count = {}
  for i in nums
    if count[i].nil?
      count[i] = 1
    else
      count[i] += 1
    end
  end

  m = count.values.max
  count.each do |k,v|
    return k if v == m
  end
end