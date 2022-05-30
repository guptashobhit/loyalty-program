class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits, id: :uuid do |t|

      t.timestamps
    end
  end
end
