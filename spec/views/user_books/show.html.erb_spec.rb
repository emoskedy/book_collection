require 'rails_helper'

RSpec.describe "user_books/show", type: :view do
  before(:each) do
    user = User.create!(username: 'example_user')
    book = Book.create!(title: 'Example Book', author: 'Author Name', price: 10, published_date: Date.today)
    
    # Use the instances of User and Book models in the creation of UserBook
    assign(:user_book, UserBook.create!(user: user, book: book))
  end

  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/<%= user_book.user_id %>/)
  #   expect(rendered).to match(/<%= user_book.book_id %>/)
  # end
end
