require "application_system_test_case"

class ScrapesTest < ApplicationSystemTestCase
  setup do
    @scrape = scrapes(:one)
  end

  test "visiting the index" do
    visit scrapes_url
    assert_selector "h1", text: "Scrapes"
  end

  test "creating a Scrape" do
    visit scrapes_url
    click_on "New Scrape"

    fill_in "Largest image", with: @scrape.largest_image
    fill_in "Status", with: @scrape.status
    fill_in "Url", with: @scrape.url
    click_on "Create Scrape"

    assert_text "Scrape was successfully created"
    click_on "Back"
  end

  test "updating a Scrape" do
    visit scrapes_url
    click_on "Edit", match: :first

    fill_in "Largest image", with: @scrape.largest_image
    fill_in "Status", with: @scrape.status
    fill_in "Url", with: @scrape.url
    click_on "Update Scrape"

    assert_text "Scrape was successfully updated"
    click_on "Back"
  end

  test "destroying a Scrape" do
    visit scrapes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scrape was successfully destroyed"
  end
end
