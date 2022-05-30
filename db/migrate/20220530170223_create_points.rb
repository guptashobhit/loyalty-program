class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points, id: :uuid do |t|
      t.bigint :amount #stores value in cents
      t.datetime :earned_on
      t.integer :entry_type, default: 0 #{ 0: credit, 1: debit}
      t.datetime :expired_on
      t.boolean :active
      t.references :spend, type: :uuid
      t.references :user, type: :uuid
      t.timestamps
    end
  end
end
