class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :plant_categories
    has_many :category, through: :plant_categories
    has_many :waterings
    has_many :people, through: :waterings

    def number_of_days_since_the_last_watering
        today = DateTime.now
        last_watering = self.waterings.last.created_at.to_datetime
        days = (today - last_watering).to_i
        puts "I was watered #{days} days ago"
    end
end
