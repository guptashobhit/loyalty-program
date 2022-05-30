class CreateUserRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :user_rewards, id: :uuid do |t|
      t.references :user, type: :uuid
      t.integer :reward_type, default: 0 #{0: monthly_milestone, 1: yealy_milestone, 2: birthday, 3: spend_based_milestone }
      t.datetime :earned_on
      t.references :reward, type: :uuid
      t.timestamps
    end
  end
end
