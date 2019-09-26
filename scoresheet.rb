lines = ARGF.read.split("\n")

t_start = lines.shift
t_start = t_start.split(":")[-2..-1]

results = {}

lines.each do |line|

  line = line.split("  ")
  # puts line
  if !results.key?(line[1])
    results[line[1]] = [0, 0]
    
  end

  if line[4] == 'pass'
    results[line[1]][0] += 1
    t = line[0].split(":")
    if t[0] == t_start[0]
      time = t[1].to_i - t_start[1].to_i
    else
      time = t[1].to_i - t_start[1].to_i + 60
    end

    results[line[1]][1] += time
  end
end



results = results.sort_by do |k, v|
  -v[1]
end

results.each do |k,v|
  puts "#{v[0]} #{v[1]} #{k}"
end