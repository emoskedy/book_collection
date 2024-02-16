# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
    described_class.new(author: 'rowling')
    described_class.new(price: '21')
    described_class.new(published_date: '11/03/2011')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end