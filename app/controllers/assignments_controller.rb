class AssignmentsController < ProtectedController
  before_action :set_assignment, only: [:show, :update, :destroy]

  # GET /assignments
  def index
    # @assignments = Assignment.all
    @assignments = current_user.assignments.all

    render json: @assignments
  end

  # GET /assignments/1
  def show
    render json: @assignment
  end

  # POST /assignments
  def create
    # @assignment = Assignment.new(assignment_params)
    @assignment = current_user.assignments.build(assignment_params)

    if @assignment.save
      render json: @assignment, status: :created, location: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignments/1
  def update
    if @assignment.update(assignment_params)
      render json: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = current_user.assignments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # delete_if removes blank parameters to allow partial assignment updates
    def assignment_params
      params.require(:assignment).permit(:assignment_name, :link, :due_date, :status, :user_id).delete_if {|key, value| value.blank? }
    end
end
