class Book < ApplicationRecord
  belongs_to :author
  has_many :book_comments, dependent: :destroy

  has_many :check_books, dependent: :destroy
  def check_book_by?(user)
    check_books.where(user_id: user.id).exists?
  end

  has_many :finish_books, dependent: :destroy
  def finish_book_by?(user)
    finish_books.where(user_id: user.id).exists?
  end
end
