lines = ARGF.read.split("\n")

re = /([a-z])\1{1,1000}/

lines.each do |line|
  longest = ""
  until line[re] == nil
    match = line[re]
    line[re] = " "
    if match.length > longest.length
      longest = match
    end
  end
  shift = longest.length
  output = (longest[0].sum + shift)
  if output > 'z'.sum
    output = output - 26
  end
  puts output.chr
end