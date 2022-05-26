class ExemplosController < ApplicationController
  before_action :set_exemplo, only: %i[ show edit update destroy ]

  # GET /exemplos or /exemplos.json
  def index
    @exemplos = Exemplo.all
  end

  # GET /exemplos/1 or /exemplos/1.json
  def show
  end

  # GET /exemplos/new
  def new
    @exemplo = Exemplo.new
  end

  # GET /exemplos/1/edit
  def edit
  end

  # POST /exemplos or /exemplos.json
  def create
    @exemplo = Exemplo.new(exemplo_params)

    respond_to do |format|
      if @exemplo.save
        format.html { redirect_to exemplo_url(@exemplo), notice: "Exemplo was successfully created." }
        format.json { render :show, status: :created, location: @exemplo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exemplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemplos/1 or /exemplos/1.json
  def update
    respond_to do |format|
      if @exemplo.update(exemplo_params)
        format.html { redirect_to exemplo_url(@exemplo), notice: "Exemplo was successfully updated." }
        format.json { render :show, status: :ok, location: @exemplo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exemplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplos/1 or /exemplos/1.json
  def destroy
    @exemplo.destroy

    respond_to do |format|
      format.html { redirect_to exemplos_url, notice: "Exemplo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemplo
      @exemplo = Exemplo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exemplo_params
      params.require(:exemplo).permit(:name)
    end
end
