arr = []
lines = ARGF.read.split("\n")
lines.each do |line|
  arr.push(line)
end



def knockknock(arr)
  arr[0].includes(".")
  puts "Knock, knock."
  puts "Who's there?"
  puts arr[0]
  puts arr[0] + " who?" 
  puts arr[1]
end

knockknock(arr)