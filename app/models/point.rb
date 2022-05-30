class Point < ApplicationRecord
  belongs_to :user
  belongs_to :spend

  enum entry_type: %i[credit debit]
end
