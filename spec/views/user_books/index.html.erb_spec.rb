require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    user = User.create!(username: 'example_user')
    book = Book.create!(title: 'Example Book', author: 'Author Name', price: 10, published_date: Date.today)
  
    assign(:user_books, [
      UserBook.create!(user: user, book: book),
    ])
  end
  

  it "renders a list of user_books" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'tr>td' : 'div>p'
    assert_select cell_selector, text: Regexp.new('example_user'), count: 1
    assert_select cell_selector, text: Regexp.new('Example Book'), count: 1
  end  
end
