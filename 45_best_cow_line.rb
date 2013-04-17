S = "ACDBCB"

def best_cow_line(s)
  current = s
  result = ""

  until current.empty?
    reversed = current.reverse
    arr = current.split("")
    if current < reversed
      result += arr.shift
    else
      result += arr.pop
    end
    current = arr.join("")
  end
  
  result
end

puts best_cow_line(S) == "ABCBCD"

