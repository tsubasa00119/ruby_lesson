class Menu
  attr_accessor :name
  attr_accessor :price

  #メソッドの使用
def initialize(name:,price:)
  self.name = name
  self.price = price
end

  def info
    return "#{self.name}#{self.price}円"
  end

  #注文が３つ以上だったら１００円引き
  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      puts total_price -= 100
    end
    #日曜日なら100円引き
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end

    return total_price
  end

    def Menu.is_discount_day?
      today = Date.today
      return today.sunday?
    end
end

