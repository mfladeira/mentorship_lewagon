class RemoveStartAtFromService < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :startAt, :datetime
  end
end
