class Camper < ApplicationRecord
has_many :sign_ups 
has_many :activities, through: :sign_ups

validates :name, presence: true, uniqueness: true 
validates :age, { minimum: 8 }
validates :age, { maximum: 18 }

end
