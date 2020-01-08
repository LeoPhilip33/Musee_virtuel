require "application_system_test_case"

class ArtsTest < ApplicationSystemTestCase
  setup do
    @art = arts(:one)
  end

  test "visiting the index" do
    visit arts_url
    assert_selector "h1", text: "Arts"
  end

  test "creating a Art" do
    visit arts_url
    click_on "New Art"

    fill_in "Auteur", with: @art.Auteur
    fill_in "Date", with: @art.Date
    fill_in "Description", with: @art.Description
    fill_in "Dimensions", with: @art.Dimensions
    fill_in "Titre", with: @art.Titre
    fill_in "Œuvre", with: @art.Œuvre
    click_on "Create Art"

    assert_text "Art was successfully created"
    click_on "Back"
  end

  test "updating a Art" do
    visit arts_url
    click_on "Edit", match: :first

    fill_in "Auteur", with: @art.Auteur
    fill_in "Date", with: @art.Date
    fill_in "Description", with: @art.Description
    fill_in "Dimensions", with: @art.Dimensions
    fill_in "Titre", with: @art.Titre
    fill_in "Œuvre", with: @art.Œuvre
    click_on "Update Art"

    assert_text "Art was successfully updated"
    click_on "Back"
  end

  test "destroying a Art" do
    visit arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art was successfully destroyed"
  end
end
