class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    # ...
  end

  def read
    fail "Go away!"
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    # Locks the diary
    # Returns nothing
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
  end
end