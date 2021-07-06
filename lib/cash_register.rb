
class CashRegister
    attr_accessor :total, :title, :price, :discount, :items, :last_transaction
    attr_reader 
    attr_writer 


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, price, quantity=1)
         @total += price * quantity
         quantity.times do
            @items << title
         end
         self.last_transaction = price * quantity
    end


    # to_i  and  to_f
    def apply_discount
        @total = @total - (@total * discount.to_f / 100).to_i
        if discount > 0
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end


    def void_last_transaction
        self.total = self.total - self.last_transaction
    end


end
