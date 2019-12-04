class Group < ApplicationRecord
    has_many :plans
    has_many :account_groups
    has_many :accounts, through: :account_groups
end
