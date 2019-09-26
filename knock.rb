lines = ARGF.read.split("\n")

puts 'Knock knock.'
puts "Who's there?"
puts lines[0].gsub("\"", "")
puts lines[0].gsub("\"", "")[0...-1] + ' who?'
puts lines[1].gsub("\"", "")