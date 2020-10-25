min_number = 1
max_number = 100
secret_number = rand(min_number..max_number)

run_game = true

while run_game
	player_number = 0
	loop do
		puts
		print "Talad ki szamot #{min_number} es #{max_number} kozott: "
		player_input = gets
		player_number = player_input.to_i

		if player_number >= min_number and player_number <= max_number
			break
		end

		puts "Nem jo szamot irtal be: #{player_input}"
	end
		
	if player_number == secret_number
		puts "Ugyes vagy! Kitalaltad a szamot: #{secret_number}"
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
