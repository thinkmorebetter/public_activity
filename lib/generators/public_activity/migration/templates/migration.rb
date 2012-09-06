# Migration responsible for creating a table with activities
class CreateModelActivities < ActiveRecord::Migration
  # Create table
  def self.up
    create_table :model_activities do |t|
      t.belongs_to :trackable, :polymorphic => true
      t.belongs_to :owner, :polymorphic => true
      t.string  :key
      t.text    :parameters
      t.belongs_to :recipient, :polymorphic => true

      t.timestamps
    end
  end
  # Drop table
  def self.down
    drop_table :model_activities
  end
end
