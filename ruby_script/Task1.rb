
class Task1
	print "Enter your tweet :"
	tweet = gets.chomp.scan(/\w+/)
	print "Enter the word :"
	word = gets.chomp
	print "Enter the limit :"
	limit = gets.chomp.to_i
	after_tweet = []
	d = 0
	tweet.each do |i|
		if i == (word)
			d+=1
			after_tweet << i unless d > limit
		else
			after_tweet << i
	    end
	end
	print after_tweet.join(" ")
end