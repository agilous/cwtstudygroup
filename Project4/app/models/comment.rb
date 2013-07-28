class Comment < ActiveRecord::Base
  attr_accessible :comment, :date_time

  belongs_to :photo
  belongs_to :user
end