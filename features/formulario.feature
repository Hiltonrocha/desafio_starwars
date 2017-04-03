# language: pt
# encoding: utf-8

Funcionalidade: Preencher Formulario StarWars	

		@formulario_starwars
		
		Cenário: Preencher formulario
		Dado que eu acesse questionário StarWars
		E preencha todos os campos corretamente
		Quando eu clicar em Enviar
		Então o questionário será finalizado com a mensagem "Obrigado por responder as perguntas! =)"