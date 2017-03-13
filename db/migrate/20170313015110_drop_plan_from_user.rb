class DropPlanFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :plan_id
  end
end
