class Timer
  #write your code here
  attr_accessor :seconds, :minutes, :hours

  def initialize()
  	@seconds = 0
  	@minutes = 0
  	@hours = 0
  end

  def pretty_print(value)
  	if value/10.0 >= 1
  		return value.to_s
  	end
  	return "0#{value}"
  end

  def seconds=(value)
  	puts "Seconds was called"
  	if value >= 60
  		self.minutes += (value/60)
  	end
  	@seconds = value%60
  end

  def minutes=(value)
  	puts "Minutes was Called"
  	if value >= 60
  		self.hours += (value/60)
  	end
  	@minutes = value%60
  end

  def hours=(value)
  	puts "Hours was called"
	  if value > 99
	  	@hours = 0
	  else
	  	@hours = value
	  end
	end

  def time_string()
  	hrs = pretty_print(hours)
  	mins = pretty_print(minutes)
  	secs =  pretty_print(seconds)
  	return "#{hrs}:#{mins}:#{secs}"
  end

end
