require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){build(:user)}
  let(:user2){build(:user)}

  describe 'Validations' do

    context 'when all required fields are provided' do
      it 'is not reporting any validation errors' do
        user.valid?
        expect(user.errors.full_messages).to be_empty
      end
    end

    context 'when first name is not provided' do
      it 'should show an error validation message' do
        user.first_name = nil
        user.valid?
        expect(user.errors.full_messages).to include("First name can't be blank")
      end
    end

    context 'when last name is not provided' do
      it 'should show an error validation message' do
        user.last_name = nil
        user.valid?
        expect(user.errors.full_messages).to include("Last name can't be blank")
      end
    end

    context 'when performing email validation' do
      it 'requires an email input' do
        user.email = nil
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
      
      it 'should not be valid with duplicate email' do
        user.save
        user2.valid?
        expect(user2.errors.full_messages).to include("Email has already been taken")
      end
    end


  end

end
