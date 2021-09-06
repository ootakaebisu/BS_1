class CheckBooksController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    check_book = current_user.check_books.new(book_id: book.id)
    check_book.save
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:book_id])
    check_book = current_user.check_books.find_by(book_id: book.id)
    check_book.destroy
    redirect_to book_path(book.id)
  end
end
