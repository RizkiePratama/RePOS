FactoryBot.define do
  factory :user do
    first_name { "Jhon" }
    last_name { "Doe" }

    email { "jhon.doe@example.com" }
    password { "ExamplePassword@#" }

    company_id { nil }
    outlet_id { nil }
  end
end
