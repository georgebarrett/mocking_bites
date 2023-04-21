require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns the list of tasks" do
    task_list = TaskList.new
    task = double :task
    task_list.add(task)

    expect(task_list.all).to eq [task]
  end

  it "returns true if all tasks are complete" do
    task_list = TaskList.new
    task_1 = double(:task_double, complete?: true)
    task_list.add(task_1)

    expect(task_list.all_complete?).to eq true
  end

  it "returns false if not all of the tasks are complete" do
    task_list = TaskList.new
    task_1 = double(:task_double, complete?: true)
    task_2 = double(:task_double_2, complete?: false)
    task_list.add(task_1)
    task_list.add(task_2)

    expect(task_list.all_complete?).to eq false
  end
end
