class News < ApplicationRecord
has_many :notes , as: :noteable

end