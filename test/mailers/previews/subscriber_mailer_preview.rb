# Preview all emails at http://localhost:3000/rails/mailers/subscriber_mailer
class SubscriberMailerPreview < ActionMailer::Preview
    def welcome_email 
        SubscriberMailer.with(subscriber: Subscriber.first).welcome_email
    end
end
