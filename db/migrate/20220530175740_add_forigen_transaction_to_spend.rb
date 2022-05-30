class AddForigenTransactionToSpend < ActiveRecord::Migration[7.0]
  def change
    add_column :spends, :forigen_currency_transaction, :boolean, default: 0
    add_reference :spends, :currency, type: :uuid
    add_column :spends, :conversion_multiplier, :float
  end
end
