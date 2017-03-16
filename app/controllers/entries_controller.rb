class EntriesController < ApplicationController
  # before_action :logged_in_user, only: [:create, :destroy]
  # before_action :correct_user,   only: :destroy

  def index
    @entries = Entry.paginate(page: params[:page], per_page: 6)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entry_params)
  end

  def update
    @entry.update_attributes(entry_params)
    redirect_to root_path
  end

  def destroy
    @entry.destroy
    redirect_to root_path
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body, :image)
    end
end
