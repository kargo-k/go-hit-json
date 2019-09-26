counter = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
ansArr = []

lines = ARGF.read.split("\n")
lines.each do | line |
  line = line.split(' ')
  line.each do |word|
  if word == "qwuack"
    ansArr.push(alphabet[counter])
  elsif word == "qwak"
    counter += 1
  elsif word == "quack"
    counter -= 1
  end
end
  end

  def run(ansArr)

  puts ansArr.join()

  end

  run(ansArr)

