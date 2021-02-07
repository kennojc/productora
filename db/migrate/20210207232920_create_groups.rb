class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :members
      t.date :debut
      t.integer :bandtype

      t.timestamps
    end
  end
end
