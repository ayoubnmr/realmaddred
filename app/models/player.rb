class Player < ApplicationRecord
    
    validates :name, presence: true
    validates :nation, presence: true
    validates :number, presence: true 
end
