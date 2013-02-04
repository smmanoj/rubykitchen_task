
require 'json'

class Task

	file = JSON.parse(File.read('rubyonrails.json'))
	print "Enter the word to search :"
	word = gets.chomp
	print "limit :"
	number = gets.chomp.to_i
	all_tweets = file['results'].select{|f| f['text'].include? (word)}.collect{|s| s['text']}.take(number)
	print all_tweets

end