require 'statement'

  describe Statement do
    it 'should be initialized with transactions as an argument' do
      statement = Statement.new(Array.new)
      expect(statement.transactions).to be_a Array
    end

  describe '#print' do
    it 'should print the transactions with date, credit, debit, and total balance' do
      account = Account.new
      account.deposit(1000)
      statement = Statement.new(account.transactions)
      expect(statement.print).to eq ("03/12/2018 || 0 || 1000 || 1000")
    end
  end

end
