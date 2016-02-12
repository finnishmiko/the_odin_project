def add(var1, var2)
  sum = var1+var2
end

def subtract(var1, var2)
  difference = var1-var2
end

def sum(array)
if array.empty? == true
  sum=0
else
  sum=0
  i=0
  array.length.times do
      sum+=array[i]
      i+=1
    end
    sum
  end
end

def multiply(var1, var2)
  product = var1*var2
end
