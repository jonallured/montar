require "application_system_test_case"

class ShortcutsTest < ApplicationSystemTestCase
  setup do
    @shortcut = Shortcut.create(short: "https://www.example.com/foo", long: "https://www.example.com/omg-this-takes-forever-to-type")
  end

  test "visiting the index" do
    visit shortcuts_url
    assert_selector "h1", text: "Shortcuts"
  end

  test "should create shortcut" do
    visit shortcuts_url
    click_on "New shortcut"

    fill_in "Long", with: @shortcut.long
    fill_in "Short", with: @shortcut.short
    click_on "Create Shortcut"

    assert_text "Shortcut was successfully created"
    click_on "Back"
  end

  test "should update Shortcut" do
    visit shortcut_url(@shortcut)
    click_on "Edit this shortcut", match: :first

    fill_in "Long", with: @shortcut.long
    fill_in "Short", with: @shortcut.short
    click_on "Update Shortcut"

    assert_text "Shortcut was successfully updated"
    click_on "Back"
  end

  test "should destroy Shortcut" do
    visit shortcut_url(@shortcut)
    click_on "Destroy this shortcut", match: :first

    assert_text "Shortcut was successfully destroyed"
  end
end
