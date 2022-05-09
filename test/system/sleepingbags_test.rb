require "application_system_test_case"

class SleepingbagsTest < ApplicationSystemTestCase
  setup do
    @sleepingbag = sleepingbags(:one)
  end

  test "visiting the index" do
    visit sleepingbags_url
    assert_selector "h1", text: "Sleepingbags"
  end

  test "should create sleepingbag" do
    visit sleepingbags_url
    click_on "New sleepingbag"

    fill_in "Integer", with: @sleepingbag.integer
    fill_in "Integer,", with: @sleepingbag.integer,
    fill_in "Name", with: @sleepingbag.name
    fill_in "String,", with: @sleepingbag.string,
    fill_in "Volume", with: @sleepingbag.volume
    fill_in "Weight", with: @sleepingbag.weight
    click_on "Create Sleepingbag"

    assert_text "Sleepingbag was successfully created"
    click_on "Back"
  end

  test "should update Sleepingbag" do
    visit sleepingbag_url(@sleepingbag)
    click_on "Edit this sleepingbag", match: :first

    fill_in "Integer", with: @sleepingbag.integer
    fill_in "Integer,", with: @sleepingbag.integer,
    fill_in "Name", with: @sleepingbag.name
    fill_in "String,", with: @sleepingbag.string,
    fill_in "Volume", with: @sleepingbag.volume
    fill_in "Weight", with: @sleepingbag.weight
    click_on "Update Sleepingbag"

    assert_text "Sleepingbag was successfully updated"
    click_on "Back"
  end

  test "should destroy Sleepingbag" do
    visit sleepingbag_url(@sleepingbag)
    click_on "Destroy this sleepingbag", match: :first

    assert_text "Sleepingbag was successfully destroyed"
  end
end
