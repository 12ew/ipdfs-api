class Api::V1::GenresController < ApplicationController
  before_action :find_genre, only: [:update]

  def index
    @genres = Genre.all
    render json: @genres
  end

  def show
    @genre = Genre.find(params[:id])
    render json: @genre
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      render json: @genre, status: :accepted, notice: 'Successfully created a genre.'
    else
      render json: { errors: @genre.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @genre.update(genre_params)
    if @genre.save
      render json: @genre, status: :accepted, notice: 'Successfully updated genre.'
    else
      render json: { errors: @genre.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def genre_params
    params.permit(:name, :bio, :yod)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
