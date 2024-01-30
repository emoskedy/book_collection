# spec/models/book_spec.rb

require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'requires a title' do
      book = Book.new
      expect(book).to_not be_valid
      expect(book.errors[:title]).to include("can't be blank")
    end
  end

  context 'associations' do
    # Add any associations tests if necessary
  end
end