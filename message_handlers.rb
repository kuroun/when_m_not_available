class MessageHandler
	attr_accessor :successor, :status
	def initialize
		@status = rand(2)
	end
	def handle msg 
		return msg 
	end
end

class VoiceMailHandler < MessageHandler
	def handle msg 
		if @status == 1
			return "#{msg} is handled by voice mail"  
		else
			@succesor = SMSHandler.new
			@succesor.handle msg
		end
	end
end

class SMSHandler < MessageHandler
	def handle msg 
		if @status == 1
			return "#{msg} is handled by sms" 
		else
			@succesor = EmailHandler.new
			@succesor.handle msg
		end
	end
end

class EmailHandler < MessageHandler
	def handle msg 
		if @status == 1
			return "#{msg} is handled by email"  
		else
			return "Sorry, the person you are trying to contact is not available!"
		end
	end
end