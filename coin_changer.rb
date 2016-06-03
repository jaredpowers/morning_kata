class CoinChanger

  def self.make_change(cent)
    change = []
    [25, 10, 5, 1].each do |coin|
      while cents >= coin
        change << coin
        cent -= coin
      end
    end
    if cent > 4
      return [5]
    end
  end
end
