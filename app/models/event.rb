class Event < ApplicationRecord

    has_many :notes , as: :noteable
    
end