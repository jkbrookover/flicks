#!/usr/bin/env ruby

require_relative '../lib/flicks/playlist'

playlist = Flicks::Playlist.new("Kermit")
default_movie_file =
	File.join(File.dirname(__FILE__), 'movies.csv')
playlist.load(ARGV.shift || default_movie_file)

loop do
	puts "How many viewings? ('quit' to exit)"
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/
		playlist.play(answer.to_i)
	when 'quit', 'exit'
		playlist.print_stats
		break
	else
		puts "Please enter a number or 'quit'"
	end

end

playlist.save


