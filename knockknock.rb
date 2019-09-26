arr = []
lines = ARGF.read.split("\n")
lines.each do |line|
  arr.push(line)
end



def knockknock(arr)
  line = arr[0].split("")
  line.pop()
  bob = line.join()

  puts "Knock, knock."
  puts "Who's there?"
  puts bob
  puts bob + " who?" 
  puts arr[1]
end

knockknock(arr)