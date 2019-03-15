class ManagementsController < ApplicationController
  before_action :set_management, only: [:show, :edit, :update, :destroy]

  # GET /managements
  # GET /managements.json
  def index
    if current_admin.role != 'leader'
      redirect_to '/home/top'
    end
    @admins = Admin.all
  end

  # GET /managements/1
  # GET /managements/1.json
  def show
  end

  # GET /managements/new
  def new
    @admin = Admin.new
  end

  # GET /managements/1/edit
  def edit
  end

  # POST /managements
  # POST /managements.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to managements_path, notice: 'Management was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new}
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managements/1
  # PATCH/PUT /managements/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to management_path(@admin), notice: 'Management was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managements/1
  # DELETE /managements/1.json
  def destroy
    @management.destroy
    respond_to do |format|
      format.html { redirect_to managements_url, notice: 'Management was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management
      @admin = Admin.find(params[:id])
      @management = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:name, :email,:password,:role)
     end
end
