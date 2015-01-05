class AddMinActivityLevelToQueries < ActiveRecord::Migration
  def change
    add_column :queries, :min_activity_level, :integer
  end
end
