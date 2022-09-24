class ContactController < ApplicationController

	def index
	end

	def send_message
		if params[:name].present? && params[:email].present? && params[:message].present?
      begin
        if true #ActionMailer::Base.mail(from: params[:email], to: 'vishwani123patlan@gmail.com', subject: params[:subject], body: params[:message]).deliver
          @mail_send = true
        else
          @mail_send = false
        end
      rescue ExceptionName
        @mail_send = false
      end
    else
      @mail_send = false
    end
	end
end