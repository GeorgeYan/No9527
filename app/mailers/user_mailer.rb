class UserMailer < ActionMailer::Base
  default from: "testno9527@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://0.0.0.:3000/signin'

    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
