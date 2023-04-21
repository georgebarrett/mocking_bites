require "diary"

RSpec.describe Diary do
  it "sets contents and reads" do
    diary = Diary.new("some content")
    expect(diary.read).to eq "some content"
  end
end