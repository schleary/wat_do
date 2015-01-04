class AddDetailsToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :name, :string
    add_column :activities, :url, :string
    add_column :activities, :description, :text
  end
end
