class Character < ApplicationRecord
belongs_to(:actor, :class_name =>"Actor", :foreign_key=>"actor_id")
  #- name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => {:scope=>:dob}

   #- dob: no rules
   #- bio: no rules
   #- image_url: no rules

end
