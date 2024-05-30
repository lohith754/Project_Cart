class EstoresController < ApplicationController
  before_action :set_estore, only: %i[ show edit update destroy ]

  # GET /estores or /estores.json
  def index
    @estores = Estore.all
  end

  # GET /estores/1 or /estores/1.json
  def show
  end

  # GET /estores/new
  def new
    @estore = Estore.new
  end

  # GET /estores/1/edit
  def edit
  end

  # POST /estores or /estores.json
  def create
    @estore = Estore.new(estore_params)

    respond_to do |format|
      if @estore.save
        format.html { redirect_to estore_url(@estore), notice: "Estore was successfully created." }
        format.json { render :show, status: :created, location: @estore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estores/1 or /estores/1.json
  def update
    respond_to do |format|
      if @estore.update(estore_params)
        format.html { redirect_to estore_url(@estore), notice: "Estore was successfully updated." }
        format.json { render :show, status: :ok, location: @estore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estores/1 or /estores/1.json
  def destroy
    @estore.destroy

    respond_to do |format|
      format.html { redirect_to estores_url, notice: "Estore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estore
      @estore = Estore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estore_params
      params.require(:estore).permit(:name, :price, :brand, :material, :electric_image)
    end
end
