class CuriculiamsController < ApplicationController
  before_action :set_curiculiam, only: [:show, :edit, :update, :destroy]

  # GET /curiculiams
  # GET /curiculiams.json
  def index
    @curiculiams = Curiculiam.all
  end

  # GET /curiculiams/1
  # GET /curiculiams/1.json
  def show
  end

  # GET /curiculiams/new
  def new
    @curiculiam = Curiculiam.new
  end

  # GET /curiculiams/1/edit
  def edit
  end

  # POST /curiculiams
  # POST /curiculiams.json
  def create
    @curiculiam = Curiculiam.new(curiculiam_params)

    respond_to do |format|
      if @curiculiam.save
        format.html { redirect_to @curiculiam, notice: 'Curiculiam was successfully created.' }
        format.json { render :show, status: :created, location: @curiculiam }
      else
        format.html { render :new }
        format.json { render json: @curiculiam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curiculiams/1
  # PATCH/PUT /curiculiams/1.json
  def update
    respond_to do |format|
      if @curiculiam.update(curiculiam_params)
        format.html { redirect_to @curiculiam, notice: 'Curiculiam was successfully updated.' }
        format.json { render :show, status: :ok, location: @curiculiam }
      else
        format.html { render :edit }
        format.json { render json: @curiculiam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curiculiams/1
  # DELETE /curiculiams/1.json
  def destroy
    @curiculiam.destroy
    respond_to do |format|
      format.html { redirect_to curiculiams_url, notice: 'Curiculiam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curiculiam
      @curiculiam = Curiculiam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curiculiam_params
      params.require(:curiculiam).permit(:teacher_id, :teacher_name, :student_id, :student_name, :begin_at, :end_at, :status)
    end
end
