class ChangeDetailsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :member, :string
    add_reference :products, :event, foreign_key: true
    remove_column :products, :goal, :string
  end
end
