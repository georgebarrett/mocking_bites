class Track
  def initialize(title, artist)
    @title = title
  end

  def matches?(keyword) 
    return true if @title.include? keyword
  end
end