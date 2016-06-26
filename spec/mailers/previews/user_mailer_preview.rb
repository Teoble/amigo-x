# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def notify()
		 user = User.first
    UserMailer.notify(user)
  end

	def notify2()
		 user = User.first
    UserMailer.notify2(user)
  end
end
