class Api::V1::AuthorsController < ApplicationController
  before_action :find_author, only: [:update]

  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    @author = Author.find(params[:id])
    render json: @author
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :accepted, notice: 'Successfully created an author.'
    else
      render json: { errors: @author.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @author.update(author_params)
    if @author.save
      render json: @author, status: :accepted, notice: 'Successfully updated author.'
    else
      render json: { errors: @author.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def author_params
    params.permit(:name, :bio, :yod)
  end

  def find_author
    @author = Author.find(params[:id])
  end

end
