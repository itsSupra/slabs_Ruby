require 'rspec'
require './script.rb'

RSpec.describe "script" do
  it "greeting_first" do
    allow_any_instance_of(Kernel).to receive (:gets).and_return('John', 'Snow', '5')
    expect(say_something).to eq('"Привет, John Snow. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"')
  end
end

