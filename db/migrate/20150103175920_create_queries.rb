class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :price
      t.integer :distance

      t.timestamps
    end
  end
end
