require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:name) {'Jungle Shirt'}
  let(:price) {2000}
  let(:quantity) {50}
  let(:category) {Category.find_or_create_by! name: 'Apparel'}
  let(:product) {Product.new name: name, price: price, quantity: quantity, category: category}

  describe 'Validations' do

    context 'when all required fields are provided' do
      it 'is not reporting any validation errors' do
        product.valid?
        expect(product.errors.full_messages).to be_empty
      end
    end

    context 'when name field is not provided' do
      let(:name) {nil}
      it 'should show an error validation message' do
        product.valid?
        expect(product.errors.full_messages).to include("Name can't be blank")
      end
    end

    context 'when price field is not provided' do
      let(:price) {nil}
      it 'should show an error validation message' do
        product.valid?
        expect(product.errors.full_messages).to include("Price can't be blank")
      end
    end

    context 'when quantity field is not provided' do
      let(:quantity) {nil}
      it 'should show an error validation message' do
        product.valid?
        expect(product.errors.full_messages).to include("Quantity can't be blank")
      end
    end

    context 'when category field is not provided' do
      let (:category) {nil}
      it 'should show an error validation message' do
        product.valid?
        expect(product.errors.full_messages).to include("Category can't be blank")
      end
    end

  end
    


end
