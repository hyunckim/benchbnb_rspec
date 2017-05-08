require 'rails_helper'

RSpec.describe User, type: :model do
  let! (:user) { User.create!(username: 'breakfast', password: 'password') }

  describe 'validations' do

    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:session_token) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe 'associations' do
    it { should have_many(:favorites) }
    it { should have_many(:favorite_benches) }
  end

  describe 'model_methods' do
   describe '.find_by_credentials' do
     context 'when given correct credentials' do
       it 'should find the right user' do
         
       end
     end

     context 'when given incorrect credentials' do
       it 'should return nil' do
         # test goes here
       end
     end
   end
 end
end
