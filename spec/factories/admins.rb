FactoryBot.define do
  factory :admin do
    email { 'admin@com.pl' }
    password { 'passwords' }
    admin { true }
  end
end
