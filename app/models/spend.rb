class Spend < ApplicationRecord
  belongs_to :user

  enum spend_type: %i[online pos], _prefix: true
end
