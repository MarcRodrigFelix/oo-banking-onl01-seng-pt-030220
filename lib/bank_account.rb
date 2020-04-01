require_relative "transfer.rb"
require 'pry'
class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open" && self.balance > 0
  end

  def close_account
    self.balance = 0
    self.status = "closed"
  end

end

# marcos = BankAccount.new("Marcos")
# vanessa = BankAccount.new("Vanessa")
# send = Transfer.new(marcos, vanessa, 80)