class Roll < ApplicationRecord
    has_many :account_rolls
    has_many :accounts, through: :account_rolls
end
