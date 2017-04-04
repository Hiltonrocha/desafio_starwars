

Dado(/^que eu acesse questionário StarWars$/) do
  @formulario = Formulario.new
  @formulario.load
  @formulario.next_button.click
  sleep 1
end

Dado(/^preencha todos os campos corretamente$/) do
  @formulario.preenche_formulario
end

Quando(/^eu clicar em Enviar$/) do
  @formulario.save_btn.click
end

Então(/^o questionário será finalizado com a mensagem "([^"]*)"$/) do |message|
  @formulario.valida_formulario(message)
end