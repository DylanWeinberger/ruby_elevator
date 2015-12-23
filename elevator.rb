#dylanWeinberger 
#require 'ruby-audio'
# I tried to use the gem gosu to play an audio. Now I'm trying ruby-audio.
# I started researching how to play a sound from the command line but struggled and ultimately moved on to our group projects.
# Elevator

# Create an Elevator class that has a floor attribute
# Instances of elevator should be aware of what floor theyre on, have a method to go up or down, and have a method to

# announce a cheery greeting along with the current floor if the instance is asked ( .greet ) Extra credit: a method to play elevator music.





class Elevator
	# attr_accessor :floor I decided to get rid of this as the floor should be changed through the change floor method
	def initialize (floor=0)
		# I made the default floor be floor 0 and a new greeting when the elevator is created
		@floor = floor
		puts "Welcome to your new elevator."
		puts "If you would like to go to a new floor use the .change_floor method."
		# @beep = Gosu::Sample.new("elevator.mp3")
	end
	def change_floor
		# this method will change the floor by asking the user which floor thewy want to go to, and getting that value and setting it to the instance
		#variable @floor. It also converts it to an integer.
		puts "what floor would you like to go to?"
		@floor = gets.to_i
			if @floor < -3
				puts "The basement only goes down three levels. Please try a new floor."
				change_floor
			elsif @floor > 38 
				puts "Slow down Willy Wonka! This Elevator only goes to floor 38."
				change_floor
			end
		puts "Ding! Welcome to floor number #{@floor} "
		return @floor
	end
	# def what_floor
	# 	puts "You are now on floor number #{@floor}"
	#I made this method to make the elevator aware of what floor it was on. But it seemed redundant with the .greet function as well. 
	# end
	def greet
		puts "Hello! Welcome to floor number #{@floor}"
		# @beep.play
		return @floor
	end
end

