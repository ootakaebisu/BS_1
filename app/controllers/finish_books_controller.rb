class FinishBooksController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    finish_book = current_user.finish_books.new(book_id: book.id)
    finish_book.save
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:book_id])
    finish_book = current_user.finish_books.find_by(book_id: book.id)
    finish_book.destroy
    redirect_to book_path(book.id)
  end
end
