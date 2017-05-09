class Character < ApplicationRecord
belongs_to(:actor, :class_name =>"Actor", :foreign_key=>"actor_id")
belongs_to(:movie, :class_name=>"Movie", :foreign_key=>"movie_id")

  #- name: must be present; must be unique in combination with dob
  validates :actor_id, :presence => true
  validates :movie_id, :presence => true

   #- dob: no rules
   #- bio: no rules
   #- image_url: no rules

end
