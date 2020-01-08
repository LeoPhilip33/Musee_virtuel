require "application_system_test_case"

class MuseesTest < ApplicationSystemTestCase
  setup do
    @musee = musees(:one)
  end

  test "visiting the index" do
    visit musees_url
    assert_selector "h1", text: "Musees"
  end

  test "creating a Musee" do
    visit musees_url
    click_on "New Musee"

    fill_in "Auteur", with: @musee.Auteur
    fill_in "Date", with: @musee.Date
    fill_in "Description", with: @musee.Description
    fill_in "Dimensions", with: @musee.Dimensions
    fill_in "Titre", with: @musee.Titre
    fill_in "Œuvre", with: @musee.Œuvre
    click_on "Create Musee"

    assert_text "Musee was successfully created"
    click_on "Back"
  end

  test "updating a Musee" do
    visit musees_url
    click_on "Edit", match: :first

    fill_in "Auteur", with: @musee.Auteur
    fill_in "Date", with: @musee.Date
    fill_in "Description", with: @musee.Description
    fill_in "Dimensions", with: @musee.Dimensions
    fill_in "Titre", with: @musee.Titre
    fill_in "Œuvre", with: @musee.Œuvre
    click_on "Update Musee"

    assert_text "Musee was successfully updated"
    click_on "Back"
  end

  test "destroying a Musee" do
    visit musees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musee was successfully destroyed"
  end
end
