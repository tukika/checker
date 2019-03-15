require "application_system_test_case"

class ManagementsTest < ApplicationSystemTestCase
  setup do
    @management = managements(:one)
  end

  test "visiting the index" do
    visit managements_url
    assert_selector "h1", text: "Managements"
  end

  test "creating a Management" do
    visit managements_url
    click_on "New Management"

    fill_in "Admin", with: @management.admin
    fill_in "Member", with: @management.member
    click_on "Create Management"

    assert_text "Management was successfully created"
    click_on "Back"
  end

  test "updating a Management" do
    visit managements_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @management.admin
    fill_in "Member", with: @management.member
    click_on "Update Management"

    assert_text "Management was successfully updated"
    click_on "Back"
  end

  test "destroying a Management" do
    visit managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Management was successfully destroyed"
  end
end
