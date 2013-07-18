class Tag < ActiveRecord::Base
  has_many :poststags
  has_many :posts, through: :poststags

  validates :title, presence: true
end
