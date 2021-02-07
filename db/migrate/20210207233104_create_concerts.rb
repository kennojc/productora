class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.date :event
      t.integer :tickets
      t.integer :duration
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
