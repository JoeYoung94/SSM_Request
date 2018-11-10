FactoryBot.define do

  factory :student do
    student_name  {Faker::Name.name}
  end
end
