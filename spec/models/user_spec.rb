require 'rails_helper'

RSpec.describe User, type: :model do
  let(:first_name) {'John'}
  let(:last_name) {'Smith'}
  let(:email) {'@jsmith@example.com'}
  let(:password) {'p@ssw0rd'}
  let(:password_confirmation) {'p@ssw0rd'}
  let(:user) {User.new first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation}

  describe 'Validations' do

    context 'when all required fields are provided' do
      it 'is not reporting any validation errors' do
        user.valid?
        expect(user.errors.full_messages).to be_empty
      end
    end

    context 'when first name is not provided' do
      let(:first_name) {nil}
      it 'should show an error validation message' do
        user.valid?
        expect(user.errors.full_messages).to include("First name can't be blank")
      end
    end

    context 'when last name is not provided' do
      let(:last_name) {nil}
      it 'should show an error validation message' do
        user.valid?
        expect(user.errors.full_messages).to include("Last name can't be blank")
      end
    end

    context 'when performing email validation' do
      it 'requires an email input' do
        let(:email) {nil}
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
      
      it 'should not be valid with duplicate email' do
        let(:email) {nil}
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
    end


  end

end
