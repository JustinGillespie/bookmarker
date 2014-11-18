class Link < ActiveRecord::Base
	belongs_to :bundle
	validates_presence_of :name
	validates_presence_of :url
end
