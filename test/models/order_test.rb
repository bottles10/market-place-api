require "test_helper"

class OrderTest < ActiveSupport::TestCase
  setup do
    @order = orders(:one)
    @product1 = products(:one)
    @product2 = products(:two)
  end

 
  test 'should set total' do
    order = Order.new user_id: @order.user_id
    order.products << @product1
    order.products << @product2
    order.save

    assert_equal (@product1.price + @product2.price), order.total
  end

  test 'builds 2 placements for the order' do
    @order.build_placements_with_product_ids_and_quantities [
      { product_id: @product1.id, quantity: 2 },
      { product_id: @product2.id, quantity: 4 }
    ]

    assert_difference('Placement.count', 2) do
      @order.save
    end
  end
end

