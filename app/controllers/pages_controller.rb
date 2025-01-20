class PagesController < ApplicationController
  def index
    @photos = Photo.order(created_at: :desc).page(params[:page]).per(9)
  end
end

