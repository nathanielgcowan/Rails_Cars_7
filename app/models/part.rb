class Part < ApplicationRecord
    
    # Has Many / Belongs To
    belongs_to :car
    belongs_to :user

    # Validations
    validates :name, :presence => true
    validates :rating, presence: true, numericality: { only_integer: true }

end
