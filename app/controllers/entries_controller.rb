class EntriesController < ApplicationController

  before_action :logged_in?, only: [:create, :edit, :destroy]
  before_action :correct_user,   only: [ :edit, :destroy]

  def index
    @entries = Entry.paginate(page: params[:page], per_page: 12)
  end

  def show
    @entry = Entry.friendly.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      flash[:success] = "Entry created!"
      redirect_to root_url
    else
      redirect_to user_path(current_user)
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(entry_params)
      flash[:success] = "Profile updated"
      redirect_to entry_show_path
    else
      flash[:error]
      render 'edit'
    end
  end

  def destroy
    @entry.destroy
    redirect_to root_path
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :body, :image, :user_id, :city_id, :slug)
    end

    def correct_user
      @entry = current_user.entries.find_by(id: params[:id])
      redirect_to root_url if @entry.nil?
    end
end
