class UserMailer < ApplicationMailer
	#def notify(user, amigo, grupo)
	def notify(user)

		@user = user

		#@amigo = amigo
		#@grupo = grupo
		#mail to: 'teste@teste.com', subject: "Atenção!!! Veja quem será seu Amigo-X!"
		mail to: user.email, subject: "Atenção!!! Veja quem será seu Amigo-X!"
	end

	def notify2(user)
		@user = user

		mail to: user.email, subject: "Atenção!!! Veja quem será seu novo Amigo-X!"
	end

	def notify2(user)

		@user = user

		#@amigo = amigo
		#@grupo = grupo
		#mail to: 'teste@teste.com', subject: "Atenção!!! Veja quem será seu Amigo-X!"
		mail to: user.email, subject: "Atenção - Novo sorteio!!! Veja quem será seu Amigo-X!"

	end
end
