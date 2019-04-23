require 'rails_helper'

RSpec.feature "Visitor navigates from home page to product details page", type: :feature, js: true do

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

  scenario "They see the product details page" do
    visit root_path
    # within '.actions' do
      puts page.html
      click_link 'Details »'
      sleep 1
      save_screenshot 'product-details.png'
      expect(page).to have_css '.products-show'
    # end
  end

end
