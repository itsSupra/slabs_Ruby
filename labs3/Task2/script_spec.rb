require 'rspec'
require_relative './script'
RSpec.describe do
  it "#script" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(18, 22, 23, 66, 17, 1)
    expect(script).to eq ([["Andrew YA", 18]])
  end
end
