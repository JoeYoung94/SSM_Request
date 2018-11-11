FactoryBot.define do

  factory :school do
    school_name  {Faker::Name.name}
  end

  factory :student do
    student_name  {Faker::Educator.university}
    school_id   {Faker::Number.between(1, 10)}
  end

  factory :course do
    course_code   {Faker::Code.nric}
    course_name   {Faker::Educator.course}
    association :school
  end



end
