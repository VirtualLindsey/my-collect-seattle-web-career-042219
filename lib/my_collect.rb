
def my_collect(c)

  if block_given?
    result = []
    i = 0
  
    while i < array.length
      value =  yield c[i]
      result << value 
      i = i + 1
    end
    
    return result
  
  else
    i = 0
    while i < c.length
      yield c[i]
      i += 1
    end 
    return c
  end
  
end
