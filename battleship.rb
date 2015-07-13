#Prep
def intro
  puts "Welcome to Battlefield"
puts "first you have to guess a spot on the board and if you hit a ship an x will appear in its place on the board"
puts "example: 1,1"
puts "x_________
__________
__________
__________
__________
__________
__________
__________
__________
__________"
sleep 3
puts "There are 4 different ships of various lengths, including: 2,3,4 and 5"
puts " You must hit each point on the ship" 
sleep 3
puts "We are currently creating your board"
sleep 1
puts "."
sleep 1
puts ".."
sleep 1
puts "..."
sleep 1
puts "Your board is ready:"
  board #playing board
sleep 3
end
def board
  puts "__________
__________
__________xxxxx
__________
__________
__________
__________
__________
__________
__________"
end

#RUN
intro 

# user_one = Ship.new
puts "let's get started"

if field.count("X") <= 14 
puts "Choose your points"
puts "row?"
row = gets.chomp
puts "column?"
column = gets.chomp
end





# field[row][column - 1]