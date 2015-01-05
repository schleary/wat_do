class AddMinActivityLevelToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :min_activity_level, :integer
  end
end
