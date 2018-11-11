require 'rails_helper'

RSpec.describe Course, :type => :model do
  before(:all) do
    @course = create(:crouse)
  end

  it "is valid with valid course attributes" do
    expect(@course).to be_valid
  end

end
