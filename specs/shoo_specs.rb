require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/shoo'

class TestShoo < MiniTest::Test

  def setup
    @new_order = Shoo.new({"first_name" => "David", "second_name" => "McKenzie", "address" => "MedowBank", "size" => 10, "quantity" => 2})
  end

  def test_customer_has_first_name
    assert_equal("David", @new_order.first_name)
  end

  def test_customer_has_second_name
    assert_equal("McKenzie", @new_order.second_name)
  end

  def test_customer_has_size
    assert_equal(10, @new_order.size)
  end

  def test_customer_has_address
    assert_equal("MedowBank", @new_order.address)
  end

  def test_customer_has_quantity
    assert_equal(2, @new_order.quantity)
  end

  def test_name_is_pretty
    assert_equal("David McKenzie", @new_order.pretty_name)
  end

end