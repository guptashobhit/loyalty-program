class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies, id: :uuid do |t|
      t.string "name"
      t.string "alpha2code"
      t.string "calling_codes", array: true
      t.string "demonym"
      t.string "flag_url"
      t.string "currency_code"
      t.string "currency_name"
      t.string "currency_symbol"
      t.decimal "rate", precision: 12, scale: 9
      t.timestamps
    end
  end
end
