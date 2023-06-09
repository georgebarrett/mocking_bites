require "string_repeater"

RSpec.describe StringRepeater do
  it "repeats a string as many times as the user likes" do 
    io = double(:io)

    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("AphexTwin").ordered
    expect(io).to receive(:puts).with("Please enter the number of repeats").ordered
    expect(io).to receive(:gets).and_return("2").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("AphexTwinAphexTwin").ordered
    
    string_repeater = StringRepeater.new(io)
    string_repeater.run
  end
end