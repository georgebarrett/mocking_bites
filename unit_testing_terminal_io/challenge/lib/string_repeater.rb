class StringRepeater

  def initialize(io = Kernel)
    @io = io
  end
  
  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter the number of repeats"
    repeats = @io.gets.to_i
    result = (string * repeats)
    @io.puts "Here is your result:"
    @io.puts result
  end
end
