class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :about
      t.string :need_people
      t.string :goal

      t.timestamps
    end
  end
end
