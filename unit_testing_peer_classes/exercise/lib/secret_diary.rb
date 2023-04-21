class SecretDiary
  def initialize(diary)
    @diary = diary
    @locked = true
  end

  def read
    fail "Go away!" if @locked
    return @diary.read
  end

  def lock
    # Locks the diary
    # Returns nothing
  end

  def unlock
    @locked = false
  end
end