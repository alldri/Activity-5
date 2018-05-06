require "application_system_test_case"

class GadgetsTest < ApplicationSystemTestCase
  setup do
    @gadget = gadgets(:one)
  end

  test "visiting the index" do
    visit gadgets_url
    assert_selector "h1", text: "Gadgets"
  end

  test "creating a Gadget" do
    visit gadgets_url
    click_on "New Gadget"

    fill_in "Brand", with: @gadget.brand
    fill_in "Camera", with: @gadget.camera
    fill_in "Internal Storage", with: @gadget.internal_storage
    fill_in "Mpixels", with: @gadget.mpixels
    fill_in "Name", with: @gadget.name
    fill_in "Num In Stock", with: @gadget.num_in_stock
    fill_in "Os", with: @gadget.os
    fill_in "Screen Size", with: @gadget.screen_size
    fill_in "Sim Slots", with: @gadget.sim_slots
    fill_in "Year Released", with: @gadget.year_released
    click_on "Create Gadget"

    assert_text "Gadget was successfully created"
    click_on "Back"
  end

  test "updating a Gadget" do
    visit gadgets_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @gadget.brand
    fill_in "Camera", with: @gadget.camera
    fill_in "Internal Storage", with: @gadget.internal_storage
    fill_in "Mpixels", with: @gadget.mpixels
    fill_in "Name", with: @gadget.name
    fill_in "Num In Stock", with: @gadget.num_in_stock
    fill_in "Os", with: @gadget.os
    fill_in "Screen Size", with: @gadget.screen_size
    fill_in "Sim Slots", with: @gadget.sim_slots
    fill_in "Year Released", with: @gadget.year_released
    click_on "Update Gadget"

    assert_text "Gadget was successfully updated"
    click_on "Back"
  end

  test "destroying a Gadget" do
    visit gadgets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gadget was successfully destroyed"
  end
end
