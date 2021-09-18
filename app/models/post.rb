require 'securerandom'

class Post < ApplicationRecord
  before_create :set_slug
  before_update :set_slug

  validates_presence_of :title, :description, :body
  # validate :acceptable_image

  # has_one_attached :image, dependent: :delete

  private

  def set_slug
    title = self.title.parameterize

    if Post.find_by(slug: title).nil? 
      self.slug = title
    else 
      self.slug = title + SecureRandom.uuid
    end

  end

  def acceptable_image  
    acceptable_types = ["image/jpeg", "image/png"]
    images.each do |image|
      unless acceptable_types.include?(image.content_type)
        errors.add(:main_image, "must be a JPEG or PNG")
        break
      end
    end
  end
end
