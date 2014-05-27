## This would be the error class section of the program.

class OhNoYouDidnt < Exception
	
end

class PrettyStandardError < StandardError
		
end

def add_one(number)
	begin number.respond_to? :+
		raise OhNoYouDidnt, "The building is on fire!"
	end
	number + 1
end

def add_two(number)
	begin number.respond_to? :+
		raise PrettyStandardError, "It's ok, I know you didn't mean it."
	end
	number + 2
end

# This is testing OhNoYouDidnt 
add_one (nil)

# This is testing PrettyStandardError
add_two (nil)
