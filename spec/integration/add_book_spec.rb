# spec/integration/add_book_spec.rb

require 'rails_helper'

RSpec.describe 'Adding a Book', type: :feature do
  it 'creates a new book' do
    visit new_book_path

    fill_in 'Title', with: 'The Great Gatsby'
    click_button 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    expect(page).to have_content('The Great Gatsby')
  end

  it 'displays an error for a book with blank title' do
    visit new_book_path

    fill_in 'Title', with: ''
    click_button 'Create Book'

    expect(page).to have_content("Title can't be blank")
  end
end