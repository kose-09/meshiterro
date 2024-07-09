class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :post_image
  has_one :notification, as: :notifiable, dependent: :destroy

  validates :user_id, uniqueness: {scope: :post_image_id}
  
  
  after_create do
    create_notification(user_id: post_image.user_id)
  end

end
