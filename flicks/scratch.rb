name1 = 'larry'
health1 = 60
puts "#{name1.capitalize} has a health of #{health1}."

name2 = "curly"
health2 = 125
puts "#{name2.upcase} has a health of #{health2}."

name3 = "moe"
health3 = 100
text = "#{name3.capitalize} has a health off #{health3}."
puts text.center(50, '*')

name4 = "shemp"
health4 = 90
puts "#{name4.capitalize.ljust(30, '.')} #{health4} health"

def weekday
	current_time = Time.new
	current_time.strftime("%A")
end


def movie_listing(title, rank=0)
	
	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)

a_title = "goldfinger"
puts movie_listing(a_title)


def time
	current_time = Time.new
	current_time.strftime("%I:%M:%S")
end

def say_hello(name, health=100)
	puts "I'm #{name.capitalize} with a health of #{health} as of #{time}"
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)