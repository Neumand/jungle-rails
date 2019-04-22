require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:name) {'Jungle Shirt'}
  let(:price) {2000}
  let(:quantity) {50}
  let(:category) {Category.find_or_create_by! name: 'Apparel'}
  let(:product) {Product.new name: name, price: price, quantity: quantity, category: category}

  describe 'Validations' do

    context "when all required fields are provided" do
      it 'is valid with valid attributes' do
        expect(product).to be_valid
      end
    end
  end
    


end
