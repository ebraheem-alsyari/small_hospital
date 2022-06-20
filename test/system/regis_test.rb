require "application_system_test_case"

class RegisTest < ApplicationSystemTestCase
  setup do
    @regi = regis(:one)
  end

  test "visiting the index" do
    visit regis_url
    assert_selector "h1", text: "Regis"
  end

  test "creating a Regi" do
    visit regis_url
    click_on "New Regi"

    fill_in "Age", with: @regi.age
    fill_in "Name", with: @regi.name
    click_on "Create Regi"

    assert_text "Regi was successfully created"
    click_on "Back"
  end

  test "updating a Regi" do
    visit regis_url
    click_on "Edit", match: :first

    fill_in "Age", with: @regi.age
    fill_in "Name", with: @regi.name
    click_on "Update Regi"

    assert_text "Regi was successfully updated"
    click_on "Back"
  end

  test "destroying a Regi" do
    visit regis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Regi was successfully destroyed"
  end
end
