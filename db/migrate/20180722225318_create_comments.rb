class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :content
      t.int :id_in_product

      t.timestamps
    end
  end
end
