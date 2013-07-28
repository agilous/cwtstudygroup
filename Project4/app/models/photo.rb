class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_time, :file_name

  belongs_to :user
  has_many :comments
end
