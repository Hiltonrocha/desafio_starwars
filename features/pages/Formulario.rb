


class Formulario < SitePrism::Page
	

	set_url "https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true"

	element :next_button, 'span.quantumWizButtonPaperbuttonLabel.exportLabel'

	element :name_field, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/input"

	element :email_field, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[3]/div[2]/div/div[1]/div/div[1]/input"

	element :yes_rdbutton, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[1]/div/div[1]/div[3]/div"

	element :no_rdbutton, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[4]/div[2]/div/content/div/label[2]/div/div[1]/div[3]/div"

	element :ep01_rdbutton, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[2]/div/label/div/div[1]/div[3]"

	element :epOutro, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/label/div/div[1]/div[3]"

	element :nameMovie_field, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[5]/div[2]/div[9]/div/div/div/div/div/div[1]/input"

	element :personFav_field, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[6]/div[2]/div/div[1]/div/div[1]/input"

	element :favMovie, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[1]/div[2]"

	element :no_field, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[2]/div[7]/div[2]/div[2]/div[4]"

	element :save_btn, :xpath, "//*[@id='mG61Hd']/div/div[2]/div[3]/div[1]/div/div[2]/content"

	
	##Preenche formulario usando Faker 
	
	def preenche_formulario
		@name = Faker::Name.name
  		@email = Faker::Internet.email
  		@person = Faker::StarWars.character

 	 	name_field.set(@name)
  		email_field.set(@email)	
  		yes_rdbutton.click
  		nameMovie_field.set(@person)
 		personFav_field.set(@person)
 		favMovie.click
    	no_field.click
    	sleep 1
 
	end

	# Clica no botão Enviar

	def salvar
		save_btn.click
	end

	def valida_formulario(message)
	 assert_text message
    end

end	
