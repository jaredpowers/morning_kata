require 'minitest/autorun'
require 'minitest/pride'

### production code
  # cc= CoinChanger.new
  # cc.maker_changer(50) == [25, 25]
  # cc.maker_changer(75) == [25, 25, 25]
  # cc.maker_changer(56) == [25, 25, 25, 1]
  # cc.maker_changer(18) == [10, 5, 1, 1, 1]
  # cc.maker_changer(6) == [5, 1]
  # cc.maker_changer(4) == [1,1,1,1]


### test code
class CoinChangerTest < Minitest::test
  def test_responds_to_changer
    assert_response_to(CoinChanger.new, :make_change)
  end

  def test_return_pennies
    cc = CoinChanger.new
    assert_equal([1,], cc.maker_changer(1))
    assert_equal([1,1], cc.maker_changer(2))
    assert_equal([1,1,1], cc.maker_changer(3))
  end
end
