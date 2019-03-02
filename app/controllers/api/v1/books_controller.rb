class Api::V1::BooksController < ApplicationController
  before_action :find_book, only: [:update, :destroy]

  def all_books
    @books = Book.all
    render json: @books
  end 

  def index # get all books
    if params[:genre_id]
      @books = Book.where(:genre_id => params[:genre_id])
    else 
      @books = Book.where(:author_id => params[:author_id])
    end
    render json: @books
  end

  def show
    @book = Book.find(params[:id])
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    # @book.image.attach(params[:book][:image]) #use this to attach an image to an existing book
    # @book.image.attach(params[:book][:file]) #use this to attach a file to an existing book

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

  def destroy
    @book.destroy
    if @book.destroy
      render json: @book, status: :accepted, notice: 'Successfully deleted book.'
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def book_params
    params.permit(:eng_title, :arabic_title, :language, :about, :harakat, :num_pages, :translator, :genre_id, :author_id, :image, :file)
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
