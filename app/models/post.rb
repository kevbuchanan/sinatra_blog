class Post < ActiveRecord::Base
  has_many :poststags
  has_many :tags, through: :poststags

  validates :title, presence: true
  validates :body, presence: true

end
