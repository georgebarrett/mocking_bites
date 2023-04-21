require "secret_diary"

RSpec.describe SecretDiary do
  context "initially" do
    it "does not read the diary because the diary is locked" do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end