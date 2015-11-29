class ActionPlansController < ApplicationController
  before_action :set_action_plan, only: [:show, :edit, :update, :destroy]

  # GET /action_plans
  # GET /action_plans.json
  def index
    @action_plans = ActionPlan.all
  end

  # GET /action_plans/1
  # GET /action_plans/1.json
  def show
  end

  # GET /action_plans/new
  def new
    @action_plan = ActionPlan.new
  end

  # GET /action_plans/1/edit
  def edit
  end

  # POST /action_plans
  # POST /action_plans.json
  def create
    @action_plan = ActionPlan.new(action_plan_params)

    respond_to do |format|
      if @action_plan.save
        # format.html { redirect_to @action_plan, notice: 'Action plan was successfully created.' }
        format.html { redirect_to edit_action_plan_path(:id => @action_plan.id), notice: 'Action plan was successfully created.' }
        format.json { render :show, status: :created, location: @action_plan }
      else
        format.html { render :new }
        format.json { render json: @action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_plans/1
  # PATCH/PUT /action_plans/1.json
  def update
    respond_to do |format|
      if @action_plan.update(action_plan_params)
        # format.html { redirect_to @action_plan, notice: 'Action plan was successfully updated.' }
        format.html { redirect_to edit_action_plan_path(:id => @action_plan.id), notice: 'Action plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_plan }
      else
        format.html { render :edit }
        format.json { render json: @action_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_plans/1
  # DELETE /action_plans/1.json
  def destroy
    @action_plan.destroy
    respond_to do |format|
      format.html { redirect_to action_plans_url, notice: 'Action plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_plan
      @action_plan = ActionPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_plan_params
      # params.require(:action_plan).permit(:unit_id, :user_id, :date_of_site_visit, :submission_or_update, :submission_or_update_date, :submitter_first_name, :submitter_last_name, :submitter_title)
      params.require(:action_plan).permit(:unit_id, :user_id, :date_of_site_visit, :submitter_first_name, :submitter_last_name, :submitter_title)
    end
end
