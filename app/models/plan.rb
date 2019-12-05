class Plan < ApplicationRecord
    belongs_to :group, optional: true
    belongs_to :account, optional: true
    # validates :day, presence: true
    # validates :name, presence: true


    def self.possible_days
        days = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
    end

    def self.get_day(day)
        Plan.where(:day => day)
    end

end
