require "application_system_test_case"

class PistolsTest < ApplicationSystemTestCase
  setup do
    @pistol = pistols(:one)
  end

  test "visiting the index" do
    visit pistols_url
    assert_selector "h1", text: "Pistols"
  end

  test "should create pistol" do
    visit pistols_url
    click_on "New pistol"

    fill_in "Accessories", with: @pistol.accessories
    fill_in "Age", with: @pistol.age
    fill_in "Caliber", with: @pistol.caliber
    fill_in "Capacity", with: @pistol.capacity
    fill_in "Comments", with: @pistol.comments
    fill_in "Manufacturer", with: @pistol.manufacturer
    fill_in "Name", with: @pistol.name
    click_on "Create Pistol"

    assert_text "Pistol was successfully created"
    click_on "Back"
  end

  test "should update Pistol" do
    visit pistol_url(@pistol)
    click_on "Edit this pistol", match: :first

    fill_in "Accessories", with: @pistol.accessories
    fill_in "Age", with: @pistol.age
    fill_in "Caliber", with: @pistol.caliber
    fill_in "Capacity", with: @pistol.capacity
    fill_in "Comments", with: @pistol.comments
    fill_in "Manufacturer", with: @pistol.manufacturer
    fill_in "Name", with: @pistol.name
    click_on "Update Pistol"

    assert_text "Pistol was successfully updated"
    click_on "Back"
  end

  test "should destroy Pistol" do
    visit pistol_url(@pistol)
    click_on "Destroy this pistol", match: :first

    assert_text "Pistol was successfully destroyed"
  end
end
