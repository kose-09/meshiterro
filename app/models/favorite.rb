class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :post_image
  has_one :notification, as: :notifiable, dependent: :destroy

  validates :user_id, uniqueness: {scope: :post_image_id}

end
