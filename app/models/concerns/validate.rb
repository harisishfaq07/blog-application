module Validate

extend ActiveSupport::Concern

    included do
        validates :name , presence: true 
        validates :description , presence: true     
    end



end




