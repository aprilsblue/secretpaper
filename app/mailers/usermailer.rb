class Usermailer < ApplicationMailer
    def welcome_email
        mail from: 'sender@email.com',
               to: 'jg0428.lim@gmail.com',
          subject: 'this is an email'
    end
end
