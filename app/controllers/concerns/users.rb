module Users 
ActiveSupport::Concern

def all
@users = User.all
end

end