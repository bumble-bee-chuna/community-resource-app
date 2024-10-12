class CommunityResourcesController < ApplicationController
  before_action :set_community_resource, only: %i[ show edit update destroy ]

  # GET /community_resources or /community_resources.json
  def index
    @community_resources = CommunityResource.all
  end

  # GET /community_resources/1 or /community_resources/1.json
  def show
  end

  # GET /community_resources/new
  def new
    @community_resource = CommunityResource.new
  end

  # GET /community_resources/1/edit
  def edit
  end

  # POST /community_resources or /community_resources.json
  def create
    @community_resource = CommunityResource.new(community_resource_params)

    respond_to do |format|
      if @community_resource.save
        format.html { redirect_to @community_resource, notice: "Community resource was successfully created." }
        format.json { render :show, status: :created, location: @community_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @community_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_resources/1 or /community_resources/1.json
  def update
    respond_to do |format|
      if @community_resource.update(community_resource_params)
        format.html { redirect_to @community_resource, notice: "Community resource was successfully updated." }
        format.json { render :show, status: :ok, location: @community_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @community_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_resources/1 or /community_resources/1.json
  def destroy
    @community_resource.destroy!

    respond_to do |format|
      format.html { redirect_to community_resources_path, status: :see_other, notice: "Community resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_resource
      @community_resource = CommunityResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def community_resource_params
      params.require(:community_resource).permit(:name, :hours_of_operation, :phone, :address, :website, :information, :recovery_tag_list => [])
    end
end
