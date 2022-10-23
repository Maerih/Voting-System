class VotesController < ApplicationController
  before_action :set_contestant
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET contestants/1/votes
  def index
    @votes = @contestant.votes
  end
 

  # GET contestants/1/votes/1
  def show
  end

  # GET contestants/1/votes/new
  def new
    @vote = @contestant.votes.build
    @vote.user_id = current_user.id
    @vote.contestant_id = @contestant.id
  end

  # GET contestants/1/votes/1/edit
  def edit
  end

  # POST contestants/1/votes
  def create
    @vote = @contestant.votes.build
    @vote.user_id = current_user.id
    @vote.contestant_id = @contestant.id

    if @vote.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  # PUT contestants/1/votes/1
  def update
    if @vote.update_attributes
      redirect_to([@vote.contestant, @vote], notice: 'Vote was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE contestants/1/votes/1
  def destroy
    @vote.destroy
    redirect_to contestants_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:contestant_id])
    end

    def set_vote
      @vote = @contestant.votes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    
end
