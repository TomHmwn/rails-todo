class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.boolean :done, null: false, default: false
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
