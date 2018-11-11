require 'rails_helper'

describe "school test school features", type: :feature do

  it "add school" do
    visit '/schools/new'
    fill_in 'School name', with: 'Universiry of Waterloo'
    click_button 'Create School'
    expect(page).to have_content 'successfully'
  end

  it "update school" do
    visit '/schools/4/edit'
    fill_in 'School name', with: 'University of Toronto'
    click_button 'Update School'
    expect(page).to have_content 'successfully'
  end


end
