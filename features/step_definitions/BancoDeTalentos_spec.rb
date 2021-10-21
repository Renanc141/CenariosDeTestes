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
        find("div[name='maritalStatus'][class='sc-jRuhRL byOqPW']").click
        find(:xpath, "//div[contains(text(),'Solteiro')]").click
        find("div[name='seniority'][class='sc-jRuhRL byOqPW']").click
        find(:xpath, "//div[contains(text(),'Trainee')]").click
        fill_in "salaryExpectation" ,with: "#{@dadosUsuario['PretensaoSalarial']}" 
        within_frame(find('iframe[title="Mensagem da empresa"]')) do
        find("button").click
          end
        
        within_frame(find('iframe[title="Janela de mensagens"]')) do
            find("button[aria-label='Fechar']").click
              end

        find(:xpath, "//div[@id='saveDataToNextStep']").click
        find("#Popular_1").click
        find("#Sincero_1").click
        find("#Líder_1").click
        find("#Animado_1").click
        find("#Persistente_1").click
        find(:xpath, "//div[@id='saveDataToNextStep']").click
        find("#Popular_2").click
        find("#Sincero_2").click
        find("#Líder_2").click
        find("#Animado_2").click
        find("#Persistente_2").click
  end

  Quando('confirma a operacao') do
    find(:xpath, "//div[@id='saveDataToNextStep']").click
  end
  
Então('e exibida a mensagem de confirmacao') do
    #expect(page.assert_text('elemento')).to eq true
  end