lines = ARGF.read.split("\n")
lines.each do |line|
  puts line
end

lines = lines[0].split(' ')
pawn = lines[0]
pawn = pawn.split('')
pawn[0] = (pawn[0].sum - 96).to_i
pawn[1] = pawn[1].to_i

bishop = lines[1]
bishop = bishop.split('')
bishop[0] = (bishop[0].sum - 96).to_i
bishop[1] = bishop[1].to_i

b = bishop[1] - bishop[0]

if (pawn[1] + pawn[0]) == b || (pawn[1] - pawn[0]) == b
  puts 'captured'
else
  puts 'safe'
end