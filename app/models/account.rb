class Account < ApplicationRecord
    has_many :plans
    has_many :account_rolls
    has_many :account_groups
    has_many :rolls, through: :account_rolls
    has_many :groups, through: :account_groups
end
