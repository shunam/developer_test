class ArrayFlatten
  def self.recursive_array(values)
    temp_result = []
      
    if values.class == Array
      values.each{|value|
        temp_result.concat(recursive_array(value))
      }
    else
      temp_result.concat([values])
    end

    temp_result
  end

  def self.flatten_ruby(arrays)
    result = []
    arrays.each{|array|
      result.concat(recursive_array(array))
    }
    return result
  end
end

arr1 = [[1,2,[3]],4]

puts "Array: #{ArrayFlatten.flatten_ruby(arr1)}"