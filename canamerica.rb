lines = ARGF.read.split("\n")
lines.each do |line|
  puts line
end

CAD = lines[0].split('$')[1].to_f
CAD_in_USD = CAD * 0.75 * 3.78541
USD = lines[1].split('$')[1].to_f

if CAD_in_USD < USD
  puts "Canadian gas is #{CAD_in_USD/USD} times cheaper."
elsif CAD_in_USD > USD
  puts "American gas is #{USD/CAD_in_USD} times cheaper."
else
  puts 'They are equal.'
end