FactoryBot.define do
    factory :post do
      software_name { 'test_title' }
      content { 'test_content' }
      user_id { 1 }
    end
  end