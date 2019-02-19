class Api::V1::BooksController < ApplicationController
  before_action :find_book, only: [:update]

  def books
    @books = Book.all
    render json: @books
  end

  def authors_books
    @books = Book.where(author_id: params[:author_id])
    render json: @books
  end

  def index # books by genre
    @books = Book.where(genre_id: params[:genre_id])
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, status: :accepted, notice: 'Successfully created a book.'
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @book.update(book_params)
    if @book.save
      render json: @book, status: :accepted, notice: 'Successfully updated book.'
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def book_params
    params.permit(:eng_title, :arabic_title, :language, :about, :harakat, :num_pages, :translator, :genre_id, :author_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
