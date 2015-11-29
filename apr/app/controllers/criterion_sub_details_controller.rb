class CriterionSubDetailsController < ApplicationController
  before_action :set_criterion_sub_detail, only: [:show, :edit, :update, :destroy]

  # GET /criterion_sub_details
  # GET /criterion_sub_details.json
  def index
    @criterion_sub_details = CriterionSubDetail.all
  end

  # GET /criterion_sub_details/1
  # GET /criterion_sub_details/1.json
  def show
  end

  # GET /criterion_sub_details/new
  def new
    @criterion_sub_detail = CriterionSubDetail.new
  end

  # GET /criterion_sub_details/1/edit
  def edit
  end

  # POST /criterion_sub_details
  # POST /criterion_sub_details.json
  def create
    @criterion_sub_detail = CriterionSubDetail.new(criterion_sub_detail_params)

    respond_to do |format|
      if @criterion_sub_detail.save
        # format.html { redirect_to @criterion_sub_detail, notice: 'Criterion sub detail was successfully created.' }
        criterion_detail_id = @criterion_sub_detail.criterion_detail_id
        criterion_id = CriterionDetail.find(criterion_detail_id).criterion_id
        format.html { redirect_to edit_criterion_detail_path(:id => @criterion_sub_detail.criterion_detail_id, :cr => Criterion.find(criterion_id).criterion_number), notice: 'Criterion sub detail was successfully created.' }
        format.json { render :show, status: :created, location: @criterion_sub_detail }
      else
        format.html { render :new }
        format.json { render json: @criterion_sub_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criterion_sub_details/1
  # PATCH/PUT /criterion_sub_details/1.json
  def update
    respond_to do |format|
      if @criterion_sub_detail.update(criterion_sub_detail_params)
        # format.html { redirect_to @criterion_sub_detail, notice: 'Criterion sub detail was successfully updated.' }
        criterion_detail_id = @criterion_sub_detail.criterion_detail_id
        criterion_id = CriterionDetail.find_by_criterion_id(criterion_detail_id).criterion_id
        format.html { redirect_to edit_criterion_detail_path(:id => @criterion_sub_detail.criterion_detail_id, :cr => Criterion.find(criterion_id).criterion_number), notice: 'Criterion sub detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @criterion_sub_detail }
      else
        format.html { render :edit }
        format.json { render json: @criterion_sub_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criterion_sub_details/1
  # DELETE /criterion_sub_details/1.json
  def destroy
    criterion_detail_id = @criterion_sub_detail.criterion_detail_id
    criterion_id = CriterionDetail.find_by_criterion_id(criterion_detail_id).criterion_id
    @criterion_sub_detail.destroy
    respond_to do |format|
      # format.html { redirect_to criterion_sub_details_url, notice: 'Criterion sub detail was successfully destroyed.' }
      format.html { redirect_to edit_criterion_detail_path(:id => @criterion_sub_detail.criterion_detail_id, :cr => Criterion.find(criterion_id).criterion_number), notice: 'Criterion sub detail was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterion_sub_detail
      @criterion_sub_detail = CriterionSubDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criterion_sub_detail_params
      params.require(:criterion_sub_detail).permit(:criterion_detail_id, :action_item, :associated_tasks, :individuals_resp, :other_res_items, :cost_amt, :source_of_funding, :proj_start_date, :target_comp_date, :current_status)
    end
end
