class MuseesController < ApplicationController
  before_action :set_musee, only: [:show, :edit, :update, :destroy]

  # GET /musees
  # GET /musees.json
  def index
    @musees = Musee.all
  end

  # GET /musees/1
  # GET /musees/1.json
  def show
  end

  # GET /musees/new
  def new
    @musee = Musee.new
  end

  # GET /musees/1/edit
  def edit
  end

  # POST /musees
  # POST /musees.json
  def create
    @musee = Musee.new(musee_params)

    respond_to do |format|
      if @musee.save
        format.html { redirect_to @musee, notice: 'Musee was successfully created.' }
        format.json { render :show, status: :created, location: @musee }
      else
        format.html { render :new }
        format.json { render json: @musee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musees/1
  # PATCH/PUT /musees/1.json
  def update
    respond_to do |format|
      if @musee.update(musee_params)
        format.html { redirect_to @musee, notice: 'Musee was successfully updated.' }
        format.json { render :show, status: :ok, location: @musee }
      else
        format.html { render :edit }
        format.json { render json: @musee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musees/1
  # DELETE /musees/1.json
  def destroy
    @musee.destroy
    respond_to do |format|
      format.html { redirect_to musees_url, notice: 'Musee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musee
      @musee = Musee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musee_params
      params.require(:musee).permit(:Titre, :Description, :Date, :Dimensions, :Œuvre, :Auteur)
    end
end
