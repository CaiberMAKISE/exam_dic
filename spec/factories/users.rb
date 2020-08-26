FactoryBot.define do
    factory :user do
      username { 'test_user' }
      email { 'a@a.com' }
      password { '00000000' }
      encrypted_password { '00000000' }
    end
  end