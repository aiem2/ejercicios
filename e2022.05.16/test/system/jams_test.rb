require "application_system_test_case"

class JamsTest < ApplicationSystemTestCase
  setup do
    @jam = jams(:one)
  end

  test "visiting the index" do
    visit jams_url
    assert_selector "h1", text: "Jams"
  end

  test "should create jam" do
    visit jams_url
    click_on "New jam"

    fill_in "Name", with: @jam.name
    fill_in "User", with: @jam.user_id
    click_on "Create Jam"

    assert_text "Jam was successfully created"
    click_on "Back"
  end

  test "should update Jam" do
    visit jam_url(@jam)
    click_on "Edit this jam", match: :first

    fill_in "Name", with: @jam.name
    fill_in "User", with: @jam.user_id
    click_on "Update Jam"

    assert_text "Jam was successfully updated"
    click_on "Back"
  end

  test "should destroy Jam" do
    visit jam_url(@jam)
    click_on "Destroy this jam", match: :first

    assert_text "Jam was successfully destroyed"
  end
end
