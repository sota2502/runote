class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.integer :weather, limit: 1, null: true
      t.string :location, null: true
      t.integer :physical_conditions, limit: 1, null: true
      t.text :diary, null: true

      t.timestamps
    end

    add_index :notes, [:user_id, :date], unique: true
  end
end
