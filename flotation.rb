lines = ARGF.read.split("\n")
h = {}
output = []
lines.each do |line|
  if line.include?('=')
    line = line.split('=')
    h["%" + line[0] + "%"] = line[1]
  else
    output << line
  end
end

result = []

output.map do |line|
  h.map do |k, v|
    if line.include?(k)
      line = line.sub(k, v)
    end
    line
  end
  result << line
end

result.each{|l| puts l}