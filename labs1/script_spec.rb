require 'rspec'
require_relative 'script'
RSpec.describe "script" do
  it "#greeting_first" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Андрей', 'Шестаков', '17')
    expect(greeting).to eq('Привет, Андрей Шестаков. Тебе меньше 18 лет, но начать учиться программировать никогда не рано')
  end
  it "#greeting_second" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Андрей', 'Шестаков', '19')
    expect(greeting).to eq('Привет, Андрей Шестаков. Самое время заняться делом!')
  end
  it "#foobar_first" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(5, 5)
    expect(foobar).to eq(10)
  end
  it "foobar_second" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(20, 30)
    expect(foobar).to eq(30)
  end
  it "foobar_third" do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(30, 20)
    expect(foobar).to eq(20)
  end
end

