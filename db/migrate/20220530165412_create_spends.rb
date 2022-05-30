class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends, id: :uuid do |t|

      t.timestamps
    end
  end
end
