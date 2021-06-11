class AddColumnToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :reference_url, :string
  end
end
