def oxford_comma(array)
  if array.size == 1 
    return array[0]
  elsif array.size == 2 
    return array.join(" and ")
  else 
    result = ""
    array.each_with_index do |word, index|
      result += word
      if index < array.length - 2
        result += ", "
      elsif index == array.length - 2 
        result += ", and "
      end 
    end 
  result
  end 
end

arr = ["foo", "bar", "baz"]
puts oxford_comma(arr)
puts arr