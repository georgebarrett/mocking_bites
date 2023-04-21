require "task_formatter"

RSpec.describe TaskFormatter do
  it "if entry is complete" do
    fake_task_entry = double(:fake_task_entry, complete?: true, title: "Hola")
    formatter = TaskFormatter.new(fake_task_entry)
    expect(formatter.format).to eq "-[x] Hola"
  end

  it "if entry is incomplete" do
    fake_task_entry = double(:fake_task_entry, complete?: false, title: "Hola")
    formatter = TaskFormatter.new(fake_task_entry)
    expect(formatter.format).to eq "-[] Hola"
  end
end