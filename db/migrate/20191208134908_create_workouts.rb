class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.references :note, null: false, foreign_key: true
      t.unsigned_integer :meter, null: true
      t.unsigned_integer :kcal, null: true
      t.unsigned_integer :steps, null: true
      t.unsigned_integer :sec, null: true
      t.text :memo, null: true

      t.timestamps
    end
  end
end
