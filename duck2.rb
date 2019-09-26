lines = ARGF.read.split("\n")
text = ""
lines.each do |line|
  text += " " + line
end

text = text.split(" ")
pointer = 97
output = ""

text.each do |q|
  if q == 'qwuack'
    output += pointer.chr
  elsif q == 'qwak'
    pointer += 1
  elsif q == 'quack'
    pointer -= 1
  end
end

puts output