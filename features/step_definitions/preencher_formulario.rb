
formulario = Formulario.new
Dado(/^que eu acesse questionário StarWars$/) do

  visit 'https://docs.google.com/forms/d/e/1FAIpQLSdeb-VOSrYEMPs1kqNYLEN2y-_9xZUrNqWb_we60tm2GO6f0w/formResponse'
  formulario.next_button.click
  sleep 1
end

Dado(/^preencha todos os campos corretamente$/) do
 formulario.preenche_formulario

end

Quando(/^eu clicar em Enviar$/) do
 
  formulario.salvar
end

Então(/^o questionário será finalizado com a mensagem "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end