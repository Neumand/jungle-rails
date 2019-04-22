require 'rails_helper'

RSpec.describe User, type: :model do
  let(:first_name) {'John'}
  let(:last_name) {'Smith'}
  let(:email) {'@jsmith@example.com'}
  let(:password) {'p@ssw0rd'}
  let(:password_confirmation) {'p@ssw0rd'}
  let(:user) {User.new first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password_confirmation}

  
end
