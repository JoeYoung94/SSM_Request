require 'rails_helper'

RSpec.describe School, :type => :model do
  before(:all) do
    @school = create(:school)
  end

  it "is valid with valid school attributes" do
    expect(@school).to be_valid
  end

  it "has a unique school name" do
    school2 = build(:school, school_name: @school.school_name)
    expect(school2).to_not be_valid
  end
end
