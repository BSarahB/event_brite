class Event < ApplicationRecord

	#relation N-N entre events et users donc passage par la table jointe attendances
	has_many :attendances 
	has_many :users, through: :attendances

	#2)on implemente la methode class_name dans le model Event
	belongs_to :admin, class_name: "User"

	#Les validations des attributs
	validates :start_date, presence: true 
	validates :duration, presence: true
	validates :description, presence: true, length: { in: 20..1000, message: "La descripton doit avoir entre 20 et 1000 caracteres"}  #on valide la presence de la description de l event si ce dernier respecte une longueur comprise entre 20 et 1000
	validates :title, presence: true, length: { in: 5..140, message: "Le titre doit comprendre entre 5 et 140 caracteres"} 
	validates :location, presence: true
    validates :price, presence: true, numericality: { in: 1..1000, message: "Le prix doit etre entre 1 et 1000"}



end
