require "diary"
require "secret_diary"

RSpec.describe "integration" do
  context "initially" do
    it "does not read the diary because the diary is locked" do
      diary = Diary.new("some content")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end