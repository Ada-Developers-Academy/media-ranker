require 'spec_helper'

describe "the website" do
  let!(:movie) { create(:movie) }
  it "enters the site and can create records" do
    visit "/"
    expect(page).to have_content("Top Movies")
    expect(page).to have_content("Top Books")
    expect(page).to have_content("Top Albums")
    expect(page).to have_content("Oops... There are not books yet, add one.")
    
    click_link "View More Movies"
    
    expect(page).to have_content movie.name
  end
end