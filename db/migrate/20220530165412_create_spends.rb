class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends, id: :uuid do |t|
      t.bigint :amount, null: false
      t.integer :spend_type, default: 0 #{0: online, 1: POS}
      t.references :user, type: :uuid
      t.timestamps
    end
  end
end
