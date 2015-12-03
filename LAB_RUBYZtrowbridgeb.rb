#Bradley Trowbridge
#COP 3834C-01 Web Application Development
#LAB RubyZ

class Computer

	def initialize type, speed, on, online
		@on = on
		@online = online
		@speed = speed
		@type = type

		puts "You made a computer"
	end

	def turnOn
		@on = true
		puts "The computer turns on"
	end

	def turnOff
		@on = false
		puts "The computer turns off"
	end

	def getOnline
		if @on
			puts "The computer goes online"
			@online = true
		else
			puts "The computer must be on"
		end
	end

	def useBrowser
		puts "Attempting to use the browser"
		if @online
			puts "You use the browser"
		else
			if @on 
				puts "The computer must be online"
			else
				puts "The computer is not on"
			end
		end
	end

	def print
		puts "Type: "+ @type
		puts "Speed: " + @speed.to_s + " GHz"
		puts "Online: " + @online.to_s
		puts "On: "+ @on.to_s
	end
end

myComputer = Computer.new "Acer Aspire", 2.5, true, false
myComputer.print
myComputer.turnOff
myComputer.useBrowser
myComputer.turnOn
myComputer.useBrowser
myComputer.getOnline
myComputer.useBrowser 
myComputer.print