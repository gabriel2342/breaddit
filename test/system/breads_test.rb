require "application_system_test_case"

class BreadsTest < ApplicationSystemTestCase
  
  test "visiting the index" do
    visit breads_path
    assert_selector "h1", text: "Breaddit"

    click_on "Bake a New Bread"
    assert_selector "h1", text: "Bake Your Bread"

    # When we fill in the name input with "Capybara quote"
    # and we click on "Create Quote"
    fill_in "Your Breads Name", with: "Capybara quote"
    fill_in "Your Bread's Story:", with: "Capybara quote"
    click_on "Bake Bread"

    # We expect to be back on the page with the title "Quotes"
    # and to see our "Capybara quote" added to the list
    assert_selector "h1", text: "Breaddit"
    assert_text "Capybara quote"
  end
end
