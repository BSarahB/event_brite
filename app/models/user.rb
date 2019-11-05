class User < ApplicationRecord
	#Relation N-N entre les tables events et users doc necessite de passer par table jointe attendances
	has_many :attendances
	has_many :events, through: :attendances 


	#3)dans la classe User on dit que user a plusieurs event_administrators(admins), ces administrators correspondent a la colonne admin_id dans le model Event
	has_many :event_admins, foreign_key: 'admin_id', class_name: "Event" 

end
