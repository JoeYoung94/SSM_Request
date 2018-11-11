require 'rails_helper'

describe "course test course features", type: :feature do

  it "add course" do
    visit '/courses/new'
    fill_in 'Course code', with: 'ECON 101'
    fill_in 'Course name', with: 'Introduction to Economy'
    click_button 'Create Course'
    expect(page).to have_content 'successfully'
  end

  it "update course" do
    visit '/courses/1/edit'
    fill_in 'Course name', with: 'Computer Science 1'
    click_button 'Update Course'
    expect(page).to have_content 'successfully'
  end


end
