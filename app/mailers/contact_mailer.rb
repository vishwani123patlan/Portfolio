class ContactMailer < ApplicationMailer

	def create_contact_mail(admin)
		admin = "sk15826489@gmail.com"
		mail(to: admin, subject: 'Collabration')
	end
end
