# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

class InteractiveCalculator

  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    number_1 = get_number
    @terminal.puts "Please enter another number"
    number_2 = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    @terminal.puts "#{number_1} - #{number_2} = #{number_1 - number_2}"
  end

  private

  def get_number
    response = @terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "Please enter numbers only."
  end

end
