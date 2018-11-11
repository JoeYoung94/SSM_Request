FactoryBot.define do

  factory :school do
    school_name  {Faker::Name.name}
  end

  factory :student do
    student_name  {Faker::Name.name}
    school_id   {Faker::Number.between(1, 10)}
  end



end
