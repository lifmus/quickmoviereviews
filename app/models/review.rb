class Review < ActiveRecord::Base
  attr_accessible :description, :kind, :movie_id
	validates_presence_of :description
  belongs_to :movie
end
