min_number = 1
max_number = 100
secret_number = rand(min_number..max_number)
try_count = 0
run_game = true

while run_game
	puts
	print "Talad ki szamot #{min_number} es #{max_number} kozott: "
	player_input = gets
	player_number = player_input.to_i
	try_count += 1
	
	if player_number < min_number or player_number > max_number
		puts "Nem jo szamot irtal be: #{player_input}"	
	elsif player_number == secret_number
		puts "Ugyes vagy! Kitalaltad a #{secret_number} szamot #{try_count} probalkozassal!"
		run_game = false
	else
		puts "Sajnos nem talaltad ki a szamot :("
		print "A #{player_number} tul "
		if player_number < secret_number
			print "kicsi"
		else
			print "nagy"

		end
		puts "!"
	end
end
