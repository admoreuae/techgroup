class ContactController < WebsiteController
  
  def submit
      #contact.name      = params[:name]
      #contact.email     = params[:email]
      #contact.subject   = params[:subject]
      #contact.telephone = params[:telephone]
      #contact.message   = params[:message]
      
      contact = ContactSubmission.create!(params)
      if contact
        ContactSubmissionMailer.notify_staff(contact)
        render :text => "okay"
      else
        render :text => "bad contact request"
      end
  end
  
  def inject_current_page
    @location = "contact"
  end

end
