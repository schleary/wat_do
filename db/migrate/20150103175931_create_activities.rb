class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :price
      t.integer :distance

      t.timestamps
    end
  end
end
