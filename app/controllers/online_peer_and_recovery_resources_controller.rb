class OnlinePeerAndRecoveryResourcesController < ApplicationController
  before_action :set_online_peer_and_recovery_resource, only: %i[ show edit update destroy ]

  # GET /online_peer_and_recovery_resources or /online_peer_and_recovery_resources.json
  def index
    @online_peer_and_recovery_resources = OnlinePeerAndRecoveryResource.all
  end

  # GET /online_peer_and_recovery_resources/1 or /online_peer_and_recovery_resources/1.json
  def show
  end

  # GET /online_peer_and_recovery_resources/new
  def new
    @online_peer_and_recovery_resource = OnlinePeerAndRecoveryResource.new
  end

  # GET /online_peer_and_recovery_resources/1/edit
  def edit
  end

  # POST /online_peer_and_recovery_resources or /online_peer_and_recovery_resources.json
  def create
    @online_peer_and_recovery_resource = OnlinePeerAndRecoveryResource.new(online_peer_and_recovery_resource_params)

    respond_to do |format|
      if @online_peer_and_recovery_resource.save
        format.html { redirect_to @online_peer_and_recovery_resource, notice: "Online peer and recovery resource was successfully created." }
        format.json { render :show, status: :created, location: @online_peer_and_recovery_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @online_peer_and_recovery_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /online_peer_and_recovery_resources/1 or /online_peer_and_recovery_resources/1.json
  def update
    respond_to do |format|
      if @online_peer_and_recovery_resource.update(online_peer_and_recovery_resource_params)
        format.html { redirect_to @online_peer_and_recovery_resource, notice: "Online peer and recovery resource was successfully updated." }
        format.json { render :show, status: :ok, location: @online_peer_and_recovery_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @online_peer_and_recovery_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_peer_and_recovery_resources/1 or /online_peer_and_recovery_resources/1.json
  def destroy
    @online_peer_and_recovery_resource.destroy!

    respond_to do |format|
      format.html { redirect_to online_peer_and_recovery_resources_path, status: :see_other, notice: "Online peer and recovery resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_peer_and_recovery_resource
      @online_peer_and_recovery_resource = OnlinePeerAndRecoveryResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def online_peer_and_recovery_resource_params
      params.require(:online_peer_and_recovery_resource).permit(:name, :hosting_org, :hosting_org_website, :time_of_meetings, :how_to_access, :description, :lived_experience_tag_list)
    end
end
