class Changer
	@@money = 0
	@@change = []
	def self.make_change(number)
	  	# change has to come in a combination of quarters, dimes, nickels, pennies
	  	# biggest change
	  	# 25 - 25 = 0
	  	# 50 - 25 - 25 = 0
	  	# 10 - 25 = -    10 - 10 = 0
	  	# 20 - 25 = - / 20 - 10 - 10 = 0

	  	@@money = number
	  	@@change =[]
	  	all_coins = [25,10,5,1]
	  	all_coins.each do |coin|
	  		Changer.calc_next_coin(@@money, coin)
	  		if @@money == 0
	  			return @@change
	  		end
	  	end

	end# end of class method

	def self.calc_next_coin(money, coin_worth )
		if money/coin_worth >= 1
			num_coins = money/coin_worth
			num_coins.times do |amount|
				@@change << coin_worth
			end
			@@money = money - coin_worth*num_coins
		end
	end

end
