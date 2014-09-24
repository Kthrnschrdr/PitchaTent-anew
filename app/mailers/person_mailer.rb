class PersonMailer < ActionMailer::Base
  default from: "pitchatentnebraska@gmail.com"
  
  def welcome_email(person)
    @person = person
    mail(to: @person.email, subject: 'Welcome to Pitch-a-Tent')
  end

end
