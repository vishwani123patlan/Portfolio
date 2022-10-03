class ContactController < ApplicationController

	def index
	end

  def new
    @contact = Contact.new
  end

	def create
    
		@contact = Contact.new(contact_params)
      respond_to do |format|
        if @contact.save
          ContactMailer.create_contact_mail(@admin).deliver_now
          format.html { render :new, notice: "Message Sent Successfully." }
          format.json { render :new, status: :created, location: @contact }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end  
	end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end 
end