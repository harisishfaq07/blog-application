class Article < ActiveRecord::Base
belongs_to :user
has_many :comments
has_many :article_categories
has_many :categories , through: :article_categories
# has_rich_text :description
    validates :name , presence: true 
    validates :description , presence: true 

end