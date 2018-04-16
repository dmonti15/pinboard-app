class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ # this line means when user uploads, it makes sure it's an actual image and not a psd format, etc.
end
