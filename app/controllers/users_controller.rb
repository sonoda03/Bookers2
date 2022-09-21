class UsersController < ApplicationController

  def index
    @book = Book.new
    @users = User.all
    @user = current_user

  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, profile_image)
  end
end
