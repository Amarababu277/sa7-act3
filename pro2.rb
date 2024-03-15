# Define room points
ROOM_POINTS = [5, 10, 15]

# Initialize total points
total_points = 0

# Welcome message
puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

# Main game loop
loop do
  # Prompt for room choice
  print "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp.downcase

  # Exit the game if the player chooses to exit
  if choice == 'exit'
    puts "Game over! You collected a total of #{total_points} points."
    break
  end

  # Convert choice to integer
  room_number = choice.to_i

  # Check if the choice is valid
  if room_number.between?(1, 3)
    # Enter the room and update total points
    points = ROOM_POINTS[room_number - 1]
    total_points += points
    puts "You entered Room #{room_number} and earned #{points} points."
    puts "Total points: #{total_points}"
  else
    puts "Invalid choice. Please choose a room between 1 and 3."
  end
end
