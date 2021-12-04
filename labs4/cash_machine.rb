BALANCE = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/Task3/balance.txt"
STARTING_BALANCE = 100

class CashMachine
  def initialize
    @balance = read_balance.to_i
  end

  def read_balance
    if File.exist?(BALANCE)
      File.read(BALANCE).chomp
    else
      STARTING_BALANCE
    end
  end

  def check_balance
    print "Money deposit print \"D\"\nWithdraw money print \"W\"\nCheck balance print \"B\"\nFor exit print \"Q\"\n"
    command = gets.chomp.to_s.downcase
    command
  end

  def write_balance
    File.write(BALANCE, @balance, mode: "w")
  end

  def balance
    print "Balance: #{@balance}\n"
  end

  def dep_money
    balance
    print "Deposit amount: "
    sum = gets.to_i
    if sum > 0
      sum
    else
      print "Enter the correct number\n"
      dep_money
    end
  end

  def deposit
    sum = dep_money
    print "Deposit: #{sum}, ur balance #{@balance + sum}\n"
    @balance += sum
  end

  def with_money
    balance
    print "Withdraw amount"
    sum = gets.to_i
    if sum > @balance
      print "Ur trying to get more than ur balance\n"
      with_money
    else
      sum
    end
  end

  def withdraw
    sum = with_money
    print "Withdraw: #{sum}, ur balance #{@balance - sum}\n"
    @balance -= sum
  end

  def error
    print "Wrong button, please try again\n"
  end
end

class App
  def self.init

    copy = CashMachine.new
    loop do
      command = copy.check_balance
      case command
      when "b"
        copy.balance
      when "d"
        copy.deposit
      when "w"
        copy.withdraw
      when "q"
        copy.write_balance
        break
      else
        copy.error
      end
    end
  end
  end
App.init