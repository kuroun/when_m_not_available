require_relative 'message_handlers.rb'
class Person
	def receive_message msg 
		VoiceMailHandler.new.handle msg
	end
end