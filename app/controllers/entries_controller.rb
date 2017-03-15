class EntriesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def index
    @entries = Entry.all
  end

  def show

  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create(entry_params)
  end

  def update
    @entry.update_attributes(entry_params)
    redirect_to entry_path(@entry)
  end

  def destroy
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
