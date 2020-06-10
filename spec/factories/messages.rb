FactoryBot.define do
  factory :message do
    id { 1 } 
    user_id { 1 }
    room_id { 1 }
    content { "test" }
  end
end
