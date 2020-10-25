secret_number = rand(1..100)

guessing = true

while guessing
	puts
	print "your guess: "
	guess = gets.to_i

	if guess == secret_number
		puts "Congratulations! You won!"
		guessing = false
	elsif guess < secret_number
		puts "Too low.."
	else
		puts "Too high ..."
	end
end