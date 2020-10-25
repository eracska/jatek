secret_number = rand(1..100)

run_game = true

while run_game
	puts
	print "Talad ki szamot: "
	player_number = gets.to_i

	if player_number == secret_number
		puts "Ugyes vagy! Kitalaltad a szamot"
		run_game = false
	elsif player_number < secret_number
		puts "Tul kicsi!"
	else
		puts "Tul nagy!"
	end
end
