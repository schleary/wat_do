class AddMaxActivityLevelToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :max_activity_level, :integer
  end
end
