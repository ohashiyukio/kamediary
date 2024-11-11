class Diary < ApplicationRecord
  has_one_attached :image
  
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
