class AddMaxActivityLevelToQueries < ActiveRecord::Migration
  def change
    add_column :queries, :max_activity_level, :integer
  end
end
