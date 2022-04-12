class Person < ActiveRecord::Base

    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods
    has_many :waterings
    has_many :plants, through: :waterings

    def water_plant plant
        #Watering.find_or_create_by(plant_id: plant.id, person_id = self.id)
        Watering.create(plant_id: plant.id, person_id: self.id)
        parenthood = PlantParenthood.find_by(plant_id: plant.id, person_id: self.id)
        if parenthood
            parenthood.affection = parenthood.affection + 1
            parenthood.save
        end
    end
end