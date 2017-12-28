require 'rails_helper'

feature 'Visitor visit home page' do
  scenario 'and view a welcome message' do
    #criação de dados
    #navegação/interaçao do user
    visit root_path

    #espectativas/validaçoes
    expect(page).to have_content('Traduções Quero Ser Dev')
    expect(page).to have_css('h1', text: 'Traduções Quero Ser Dev')

  end

  scenario 'and view translation' do
    Translation.create(portuguese: 'Teclado', english: 'Keyboard')

    visit root_path

    expect(page).to have_content('Teclado')
    expect(page).not_to have_content('Keyboard')


  end

end
