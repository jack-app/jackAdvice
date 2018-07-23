class AddProductIdToComment < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :product, index: true
  end
end
