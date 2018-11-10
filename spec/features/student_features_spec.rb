require 'rails_helper'

describe "student test student features", type: :feature do

  it "add student" do
    visit '/students/new'
    fill_in 'Student name', with: 'Joe Yang'
    click_button 'Create Student'
    expect(page).to have_content 'successfully'
  end

  it "update student" do
    visit '/students/7/edit'
    fill_in 'Student name', with: 'Joe Yang'
    click_button 'Update Student'
    expect(page).to have_content 'successfully'
  end


end
