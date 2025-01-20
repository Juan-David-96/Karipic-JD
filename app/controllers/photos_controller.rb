class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /photos or /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1 or /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos or /photos.json
  def create
    if current_user.karina?
      @photo = current_user.photos.build(photo_params)

      if @photo.save
        redirect_to @photo, notice: 'Foto subida exitosamente.'
      else
        render :new
      end
    else
      redirect_to photos_path, alert: 'No tienes permiso para subir fotos.'
    end
  end
  

  # PATCH/PUT /photos/1 or /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: "Photo was successfully updated." }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1 or /photos/1.json
  def destroy
    if current_user.karina?
      @photo.destroy!

      respond_to do |format|
        format.html { redirect_to photos_path, status: :see_other, notice: "Photo was successfully destroyed." }
        format.json { head :no_content }
      end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_params
      params.require(:photo).permit(:caption, :image, :title)
    end
end
