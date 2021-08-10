class ATM
    attr_reader :balance

    def initialize(balance)
        @balance = balance

    end

    def deposit(money)
        @balance =  @balance + money if money > 0
    end

    # def balance
    #     @bankSave
    # end

    def withdraw(money)
        if money > 0 and enough?(money)
            @balance = @balance - money
            return money
        else
            return 0
        end
    end

    private
    def enough?(money)
        money <= @balance
    end
end
