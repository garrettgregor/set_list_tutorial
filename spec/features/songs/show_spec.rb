require "rails_helper"

RSpec.describe "the songs show page" do
  # As a user,
  # When I visit "/songs/1" (where 1 is the id of a song in my database),
  # Then I see that song's title, and artist
  # And I do not see any of the other songs in my database
  it "displays the song title" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song1 = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2_456_357)
    song2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 32_456_357)
    visit "/songs/#{song1.id}"

    expect(page).to have_content(song1.title)
    expect(page).to_not have_content(song2.title)
  end

  it "displays the name of artist for the song" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song1 = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2_456_357)
    song2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count: 32_456_357)
    visit "/songs/#{song1.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
    expect(page).to_not have_content(song2.title)
  end
end