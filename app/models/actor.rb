class Actor < ApplicationRecord
has_many(:characters, :class_name=>"Character", :foreign_key=>"actor_id")
has_many(:movies, :class_name=>"Movie", :foreign_key=>"id")
   validates :name, :presence => true, :uniqueness => {:scope=>:dob}
   #- name: no rules

end
