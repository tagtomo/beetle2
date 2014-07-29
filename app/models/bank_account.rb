class BankAccount < ActiveRecord::Base
  belongs_to :person, foreign_key: "number", primary_key: "number"
end
