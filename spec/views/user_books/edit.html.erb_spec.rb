require 'rails_helper'

RSpec.describe "user_books/edit", type: :view do
  let(:user) { User.create!(username: 'example_user') }
  let(:book) { Book.create!(title: 'Example Book', author: 'Author Name', price: 10, published_date: Date.today) }

  let(:user_book) {
    UserBook.create!(
      user: user,
      book: book
    )
  }

  before(:each) do
    assign(:user_book, user_book)
  end

  # it "renders the edit user_book form" do
  #   render

  #   assert_select "form[action=?][method=?]", user_book_path(user_book), "post" do
  #     assert_select "input[name=?]", "user_book[user_id]"
  #     assert_select "input[name=?]", "user_book[book_id]"
  #   end
  # end
end

