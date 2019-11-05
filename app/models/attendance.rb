class Attendance < ApplicationRecord

	#Relation 1-N entre la table jointe attendances et les 2 tables users et events. 
	belongs_to :user
	belogns_to :event
end
