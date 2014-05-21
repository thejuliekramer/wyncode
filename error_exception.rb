error_exception.rb

## This would be the error class section of the program.

class OhNoYouDidnt < Exception
	
end

class PrettyStandardError < StandardError
	puts "It's ok, I know you didn't mean it."
end

def add_one(number)
	begin number.respond_to? :+
		raise OhNoYouDidnt
	end
	number + 1
end

def add_two(number)
	begin number.respond_to? :+
		raise PrettyStandardError
	end
	number + 2
end

# This is testing OhNoYouDidnt but I'm too scared to run this code so I commented it out.
# add_one (nil)

# This is testing PrettyStandardError
add_two (nil)