
prefix = fn str1 -> (fn str2 -> "#{str1} #{str2}" end) end

hego = prefix.("hego")
IO.puts hego.("chin")
