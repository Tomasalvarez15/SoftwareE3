require "application_system_test_case"

class EqualsTest < ApplicationSystemTestCase
  setup do
    @equal = equals(:one)
  end

  test "visiting the index" do
    visit equals_url
    assert_selector "h1", text: "Equals"
  end

  test "creating a Equal" do
    visit equals_url
    click_on "New Equal"

    fill_in "Estado", with: @equal.estado
    fill_in "Liked", with: @equal.liked
    fill_in "Liker", with: @equal.liker
    click_on "Create Equal"

    assert_text "Equal was successfully created"
    click_on "Back"
  end

  test "updating a Equal" do
    visit equals_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @equal.estado
    fill_in "Liked", with: @equal.liked
    fill_in "Liker", with: @equal.liker
    click_on "Update Equal"

    assert_text "Equal was successfully updated"
    click_on "Back"
  end

  test "destroying a Equal" do
    visit equals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equal was successfully destroyed"
  end
end
