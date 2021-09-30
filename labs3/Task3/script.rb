STARTING_BALANCE = 100
BALANCE = "/Users/ciberdroon/RubymineProjects/slabs_Ruby/labs3/Task3/balance.txt"

def read_balance
  if File.exist?(BALANCE)
    File.read(BALANCE).chomp
  else
    STARTING_BALANCE
  end
end

def check_balance
  print "Money deposit print \"D\"\nWithdraw money print \"W\"\nCheck balance print \"B\"\nFor exit print \"Q\""
  command = gets.chomp.to_s.downcase
  command
end

def write_balance(total)
  File.write(BALANCE, total, mode: "w")
end

def balance(total)
  print "Balance: #{total}\n"
end

def deposit (total)
  total = total.to_i

  def dep_money (total)
    balance(total)
    print "Deposit amount: "
    sum = gets.to_i
    if sum > 0
      sum
    else
      print "Enter the correct number\n"
      dep_money(total)
    end
  end

  sum = dep_money(total)
  print "Deposit: #{sum}, ur balance #{total + sum}\n"
  (total + sum)
end

def withdraw (total)
  total = total.to_i

  def with_money(total)
    balance(total)
    print "Withdraw amount"
    sum = gets.to_i
    if sum > total
      print "Ur trying to get more than ur balance\n"
      with_money(total)
    else
      sum
    end
  end

  sum = with_money(total)
  print "Withdraw: #{sum}, ur balance #{total - sum}\n"
  (total - sum)
end

def error
  print "Wrong button, please try again\n"
end

def main
  button = "b"
  money = read_balance
  while button != "q"
    if button == "b"
      balance(money)
    else
      if button == "d"
        money = deposit(money)
      else
        if button == "w"
          money = withdraw(money)
        else
          error
        end
      end
    end
    button = check_balance
  end
  write_balance(money)
  money
end

main



