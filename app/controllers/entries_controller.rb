class EntriesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
