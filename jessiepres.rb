$candidate=[
  {candidate: 'Mike', votes: 0},
  {candidate: 'Reggie', votes: 0},
  {candidate: 'Kenneth', votes: 0},
  {candidate: 'Trevor', votes: 0},
]
$name=""
$voterNum=1
$votes=Array.new
  $ind=0
  #$fortie=""
def showCandidate
  puts "CANDIDATES"
  puts '__________________________'
  for x in 0..$candidate.length-1
      puts "#{x+1}. #{$candidate[x][:candidate]}"
  end
  puts '_________________________'
end
def getProf
  print "What is your name: "
  $name=gets.chomp.strip

end
def getVote
  n=true
  while n==true do
    showCandidate
    getProf

    puts "Your are voter number #{$voterNum}"
    print "Enter the number of your vote #{$name}: "
  vote=gets.chomp

  if vote.to_i>=1 and vote.to_i<=$candidate.length
    $candidate[vote.to_i-1][:votes]+=1
    $voterNum+=1
  elsif vote.upcase=='E'
    n=false
  else
      puts "Invalid vote"

  end
end
end

def getWinner
puts "_"*79
  for x in 0..$candidate.length-1
    puts "#{$candidate[x][:candidate]} = VOTES: #{$candidate[x][:votes]}"
    $votes.push($candidate[x][:votes])
  end
puts "_"*79

for x in 0..$candidate.length-1

  puts $candidate[x][:candidate].concat(" ") + ('#'*$candidate[x][:votes].to_i)

end


counter=0
  for x in 0..$candidate.length-1
    if $candidate[x][:votes]==$votes.max
      $ind=x
      break
    end
  end
for x in 0..$candidate.length-1
  if $candidate[x][:votes]==$votes.max
    counter+=1
  end
end
  # if $ind.length>=2
  #   puts "We have a tie."
  #   for x in 0..$ind.length-1
  #     puts "#{$candidate[$ind[x].to_i][:candidate]} with #{$candidate[$ind[x].to_i][:votes]} votes."
  #   end
  #
  # else
if counter>=2
  puts "It's a tie."
else
    puts "The winner is #{$candidate[$ind.to_i][:candidate]} with #{$candidate[$ind.to_i][:votes]} votes."
end
end

def exeProgram
  puts "VIVIXX VOTING SYSTEM".center(79, "*")
getVote
getWinner

end

exeProgram
