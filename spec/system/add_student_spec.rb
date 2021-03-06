require "rails_helper"
RSpec.describe "adding a student", type: :system do
  it "allows a user to create a student" do
    visit new_student_path
    fill_in "Declared major", with: "Computer Science" 
    click_on("Create Student")
    visit students_path
    expect(page).to have_content("Computer Science")
  end
  
  it "Has a default value if student is created with no declared major" do
    visit new_student_path
    click_on("Create Student")
    visit students_path
    expect(page).to have_content("No defined major")
  end
end