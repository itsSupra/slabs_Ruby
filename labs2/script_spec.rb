require 'rspec'
require_relative 'script'
RSpec.describe "Script" do
  it "#task1_first" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("Travis")
    expect(task1).to eq ("sivarT")
  end
  it "#task1_second" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return("physics")
    expect(task1).to eq(128)
  end
  it "#task2_first" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(2, "Alan", "White", "Misha", "Blue")
    expect(task2).to eq ([{ "Alan" => "White" }, { "Misha" => "Blue" }])
  end
end