class InPersonRecoveryResourcesController < ApplicationController
  before_action :set_in_person_recovery_resource, only: %i[ show edit update destroy ]

  # GET /in_person_recovery_resources or /in_person_recovery_resources.json
  def index
    @in_person_recovery_resources = InPersonRecoveryResource.all
  end

  # GET /in_person_recovery_resources/1 or /in_person_recovery_resources/1.json
  def show
  end

  # GET /in_person_recovery_resources/new
  def new
    @in_person_recovery_resource = InPersonRecoveryResource.new
  end

  # GET /in_person_recovery_resources/1/edit
  def edit
  end

  # POST /in_person_recovery_resources or /in_person_recovery_resources.json
  def create
    @in_person_recovery_resource = InPersonRecoveryResource.new(in_person_recovery_resource_params)

    respond_to do |format|
      if @in_person_recovery_resource.save
        format.html { redirect_to @in_person_recovery_resource, notice: "In person recovery resource was successfully created." }
        format.json { render :show, status: :created, location: @in_person_recovery_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @in_person_recovery_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_person_recovery_resources/1 or /in_person_recovery_resources/1.json
  def update
    respond_to do |format|
      if @in_person_recovery_resource.update(in_person_recovery_resource_params)
        format.html { redirect_to @in_person_recovery_resource, notice: "In person recovery resource was successfully updated." }
        format.json { render :show, status: :ok, location: @in_person_recovery_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @in_person_recovery_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_person_recovery_resources/1 or /in_person_recovery_resources/1.json
  def destroy
    @in_person_recovery_resource.destroy!

    respond_to do |format|
      format.html { redirect_to in_person_recovery_resources_path, status: :see_other, notice: "In person recovery resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_person_recovery_resource
      @in_person_recovery_resource = InPersonRecoveryResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def in_person_recovery_resource_params
      params.require(:in_person_recovery_resource).permit(:name, :address, :monday_opening_hours, :monday_closing_hours, :tuesday_opening_hours, :tuesday_closing_hours, :wednesday_opening_hours, :wednesday_closing_hours, :thursday_opening_hours, :thursday_closing_hours, :friday_opening_hours, :friday_closing_hours, :saturday_opening_hours, :saturday_closing_hours, :sunday_opening_hours, :sunday_closing_hours, :phone, :website, :bus_routes, :information, :tag_list, :services_tag_list, :recovery_models_tag_list)
      # :services_offered_tag_list => [],  :recovery_models_offered_tag_list => []
    end
end
