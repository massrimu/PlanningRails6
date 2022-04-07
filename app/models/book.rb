class Book < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :author, :description
  validates_format_of :webpage, :with => URI::regexp(%w(http https))
  has_attached_file :image, styles: { medium: "700x700>", thumb: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  resourcify
end
