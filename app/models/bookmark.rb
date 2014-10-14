class Bookmark < ActiveRecord::Base
	belongs_to :user

	validates :user_id, presence: true
	validates :title, length: { minimum: 10 }, presence: true

	validates_format_of :url, :with => URI::regexp(%w(http https)) 
end
