require "interactive_calculator"

RSpec.describe InteractiveCalculator do
  it "subtracts two numbers using terminal" do
    terminal = double :terminal
    
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("45").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("45 - 3 = 42").ordered

    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  it "fails if string is given rather than an integer" do
    terminal = double :terminal
    
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("Autechre").ordered

    interactive_calculator = InteractiveCalculator.new(terminal)
    expect { interactive_calculator.run }.to raise_error "Please enter numbers only."
  end
end