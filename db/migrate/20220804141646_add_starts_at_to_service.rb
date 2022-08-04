class AddStartsAtToService < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :start_at, :datetime
  end
end
