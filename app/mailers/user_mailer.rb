class UserMailer < ApplicationMailer
	default from: "t.a.saojose@gmail.com"

  	def contact_form(email, name, message)
  		@message = message
    	mail(:from => email,
        :to => 't.a.saojose@gmail.com',
        :subject => "A new contact form message from #{name}")
  	end

  	def welcome(user)
	  @appname = "Bike Shop"
	  mail( :to => user.email,
	        :subject => "Welcome to #{@appname}!")
	end
end
