require "track"
require "music_library"

RSpec.describe "integration" do
  it "adds and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title1", "artist1")
    track_2 = Track.new("title2", "artist2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end
end