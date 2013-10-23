class ContactSubmissionMailer < ActionMailer::Base
  def notify_staff(submission)
    @s = submission.subject.downcase
    case @s
    when "careers"
      recipient_email = "career@techgroup.ae"
    else
      recipient_email = "info@techgroup.ae"
    end

    @sender   = "#{submission.name} <#{submission.email}>"
    @subject  = submission.subject
    @message  = submission.message

    mail(:from      => "TechGroup <noreply@techgroup.ae>",
         :to        => recipient_email,
         :subject   => @subject,
         :reply_to  => @sender ).deliver
  end
end
