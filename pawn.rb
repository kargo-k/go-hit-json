lines = ARGF.read.split("\n")
lines.each do |line|
  puts line
end


pawn = lines[0]
pawn = pawn.split('')
pawn[0] = (pawn[0].sum - 96).to_i
pawn[1] = pawn[1].to_i

bishop = lines[1]
bishop = bishop.split('')
bishop[0] = (bishop[0].sum - 96).to_i
bishop[1] = bishop[1].to_i

path = []

for i in (1..7).to_a do
  path << [bishop[0]+i, bishop[1]+i]
  path << [bishop[0]+i, bishop[1]-i]
  path << [bishop[0]-i, bishop[1]+i]
  path << [bishop[0]-i, bishop[1]-i]
end

if path.index(pawn) != -1
  puts 'captured'
else
  puts 'safe'
end