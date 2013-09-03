require 'spec_helper'

describe 'courses'

  feature 'creates a course' do 
    scenario 'with all attributes being valid' do   
      visit new_course_path
      fill_in "Description", with: "A new HTML course"
      click_on "Create Course"
      expect(page).to have_content("Course was successfully created.")

    end


  end