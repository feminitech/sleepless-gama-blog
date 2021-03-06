class Blog < ApplicationRecord
	validates :title, presence: true
	validates :details, presence: true
	validates :content, presence: true
	validates :por, presence: true
	has_attached_file :image#, :path => ":rails_root/public/:id/:filename"
	validates :image, attachment_presence: true
	validates_attachment :image, presence: true,
	  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
	  size: { in: 0..10.megabytes }
end
