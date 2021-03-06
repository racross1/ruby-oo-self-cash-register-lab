
require 'pry'

class CashRegister
    attr_accessor :discount, :total, :items_arr, :prices_arr
   

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items_arr = []
        @prices_arr = []
    end 

    def total 
        @total
    end 

    def add_item(title, price, quantity=1)
        total_price = price * quantity
        quantity.times{self.items_arr << title} 
        self.prices_arr << total_price
        @total += total_price
    end 

    def items
       self.items_arr
    end 

    def void_last_transaction
        @total -= self.prices_arr.pop
    end 



    def apply_discount
        #binding.pry 
        if self.discount > 0 
            discount = self.discount.to_f / 100.00
            new_cost = self.total.to_f - (self.discount.to_f / 100.00) * self.total.to_f
        else 
            self.total = self.total
            return "There is no discount to apply."
        end
        self.total = new_cost.to_i 
        "After the discount, the total comes to $#{self.total}."
    end 

            

     


end 
        






 
