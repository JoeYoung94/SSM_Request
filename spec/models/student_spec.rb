require 'rails_helper'

RSpec.describe Student, :type => :model do
  before(:all) do
    @stu1 = create(:student)
  end

  it "is valid with valid attributes" do
    expect(@stu1).to be_valid
  end

  it "has a unique student name" do
    stu2 = build(:student, student_name: @stu1.student_name)
    expect(stu2).to_not be_valid
  end
end
