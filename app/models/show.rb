class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    def actors_list
        characters.map do |character| #iterate through all characters for this show
            "#{character.actors.full_name}" #map character's actor's full_name method 
        end
    end
end