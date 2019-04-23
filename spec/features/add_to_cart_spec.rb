require 'rails_helper'

RSpec.feature "Visitor adds a product to their cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end

    scenario 'They can see their cart update after product is added' do
      visit root_path
      click_button 'Add'
      sleep 1
      save_screenshot 'updated_cart.png'
      expect(page).to have_text('My Cart (1)')
    end

end
