Dado('que o usuario esteja na tela de login no site RH') do
    visit "/"
    find('.sc-igwadP' , text: "CADASTRAR").click
  end
  
  Dado('que o usuario possua os dados pessoais') do |table|
    @dadosUsuario = table.rows_hash
 
  end
  
Quando('usuario clica efetua o login') do |table|
    tabela = table.hashes
   
    tabela.each do |value| 
        fill_in "user", with: "#{value[:usuario]}"
        find("input[type=password]").set "#{value[:senha]}"
        click_button "Entrar"
    end
  end
  
  Quando('preenche todos os campos nas telas seguintes') do
        fill_in "nationality", with: "#{@dadosUsuario['Nacionalidade']}"
        fill_in "naturality", with: "#{@dadosUsuario['Naturalidade']}"
        fill_in "salaryExpectation" ,with: "#{@dadosUsuario['PretensaoSalarial']}"  
        
        find("button[id=saveDataToNextStep").click
    
  end

  Quando('confirma a operacao') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
Então('e exibida a mensagem de confirmacao') do
    pending # Write code here that turns the phrase above into concrete actions
  end