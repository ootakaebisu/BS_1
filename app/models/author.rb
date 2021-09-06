class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
