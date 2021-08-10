require('./atm')

RSpec.describe ATM do

    context "領錢功能" do
        it "可以領錢" do
            atm = ATM.new(20)
            money = atm.withdraw(10)

            expect(atm.balance).to be 10
            expect(money).to be 10
        end

        it "不能領0元或是小於0元的金額" do
            atm = ATM.new(20)
            money = atm.withdraw(-10)
            
            expect(atm.balance).to be 20
            expect(money).to be 0
        end

        it "不能領超過本身餘額" do
            atm = ATM.new(20)
            money = atm.withdraw(30)

            expect(atm.balance).to be 20
            expect(money).to be 0
        end
    end

    context "存錢功能" do
        it "可以存錢" do
            atm = ATM.new(10)
            atm.deposit(20)
            expect(atm.balance).to (be (30))
        end

        it "不可以存0元或小於0元的金額" do
            #Arrange
            # atm = ATM.new(10)

            #Act
            # atm.deposit(-10)

            #Assert
            # expect(atm.balance).to be 10
        end

    end
end