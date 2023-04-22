require "cat_facts"

RSpec.describe CatFacts do 
  it "should return a cat fact" do
    fake_requester = double(:requester)
    expect(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Neutering a male cat will, in almost all cases, stop him from spraying (territorial marking), fighting with other males (at least over females), as well as lengthen his life and improve its quality.","length":198}')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq("Cat fact: Neutering a male cat will, in almost all cases, stop him from spraying (territorial marking), fighting with other males (at least over females), as well as lengthen his life and improve its quality.")
  end 
end