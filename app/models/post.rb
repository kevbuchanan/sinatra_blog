class Post < ActiveRecord::Base
  has_many :poststags, dependent: :destroy
  has_many :tags, through: :poststags
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

end
