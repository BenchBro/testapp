require "application_system_test_case"

class CataloguesTest < ApplicationSystemTestCase
  setup do
    @catalogue = catalogues(:one)
  end

  test "visiting the index" do
    visit catalogues_url
    assert_selector "h1", text: "Catalogues"
  end

  test "should create catalogue" do
    visit catalogues_url
    click_on "New catalogue"

    fill_in "Accessories", with: @catalogue.accessories
    fill_in "Age", with: @catalogue.age
    fill_in "Caliber", with: @catalogue.caliber
    fill_in "Capacity", with: @catalogue.capacity
    fill_in "Comments", with: @catalogue.comments
    fill_in "Manufacturer", with: @catalogue.manufacturer
    fill_in "Name", with: @catalogue.name
    click_on "Create Catalogue"

    assert_text "Catalogue was successfully created"
    click_on "Back"
  end

  test "should update Catalogue" do
    visit catalogue_url(@catalogue)
    click_on "Edit this catalogue", match: :first

    fill_in "Accessories", with: @catalogue.accessories
    fill_in "Age", with: @catalogue.age
    fill_in "Caliber", with: @catalogue.caliber
    fill_in "Capacity", with: @catalogue.capacity
    fill_in "Comments", with: @catalogue.comments
    fill_in "Manufacturer", with: @catalogue.manufacturer
    fill_in "Name", with: @catalogue.name
    click_on "Update Catalogue"

    assert_text "Catalogue was successfully updated"
    click_on "Back"
  end

  test "should destroy Catalogue" do
    visit catalogue_url(@catalogue)
    click_on "Destroy this catalogue", match: :first

    assert_text "Catalogue was successfully destroyed"
  end
end
