class Recipe < ApplicationRecord
    has_attached_file :image, validate_media_type: false, styles: { medium: "400x400#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
