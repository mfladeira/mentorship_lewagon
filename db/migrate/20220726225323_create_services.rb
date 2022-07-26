class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price, default: 0, precision: 8
      t.text :description
      t.string :specialty
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
