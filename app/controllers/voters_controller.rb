class VotersController < ApplicationController
  before_action :set_contestant
  before_action :set_voter, only: [:show, :edit, :update, :destroy]

  # GET contestants/1/voters
  def index
    @voters = @contestant.voters
  end

  # GET contestants/1/voters/1
  def show
  end

  # GET contestants/1/voters/new
  def new
    @voter = @contestant.voters.build
    @voter.user_id = current_user.id
  end

  # GET contestants/1/voters/1/edit
  def edit
  end

  # POST contestants/1/voters
  def create
    @voter = @contestant.voters.build(voter_params)
    @voter.user_id = current_user.id

    if @voter.save
      redirect_to([@voter.contestant, @voter], notice: 'Voter was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT contestants/1/voters/1
  def update
    @voter.user_id = current_user.id
    if @voter.update_attributes(voter_params)
      redirect_to([@voter.contestant, @voter], notice: 'Voter was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE contestants/1/voters/1
  def destroy
    @voter.destroy

    redirect_to contestant_voters_url(@contestant)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:contestant_id])
    end

    def set_voter
      @voter = @contestant.voters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def voter_params
      params.require(:voter).permit(:name)
    end
end
