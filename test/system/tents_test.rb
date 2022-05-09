require "application_system_test_case"

class TentsTest < ApplicationSystemTestCase
  setup do
    @tent = tents(:one)
  end

  test "visiting the index" do
    visit tents_url
    assert_selector "h1", text: "Tents"
  end

  test "should create tent" do
    visit tents_url
    click_on "New tent"

    fill_in "Integer", with: @tent.integer
    fill_in "Name", with: @tent.name
    fill_in "String", with: @tent.string
    fill_in "Volume", with: @tent.volume
    fill_in "Weight", with: @tent.weight
    click_on "Create Tent"

    assert_text "Tent was successfully created"
    click_on "Back"
  end

  test "should update Tent" do
    visit tent_url(@tent)
    click_on "Edit this tent", match: :first

    fill_in "Integer", with: @tent.integer
    fill_in "Name", with: @tent.name
    fill_in "String", with: @tent.string
    fill_in "Volume", with: @tent.volume
    fill_in "Weight", with: @tent.weight
    click_on "Update Tent"

    assert_text "Tent was successfully updated"
    click_on "Back"
  end

  test "should destroy Tent" do
    visit tent_url(@tent)
    click_on "Destroy this tent", match: :first

    assert_text "Tent was successfully destroyed"
  end
end
