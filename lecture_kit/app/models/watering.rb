class Watering < ActiveRecord::Base
    belongs_to :person
    belongs_to :plant
end