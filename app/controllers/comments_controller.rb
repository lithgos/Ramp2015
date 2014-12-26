class CommentsController < ApplicationController
  before_filter :authenticate_user!
  # GET /jobs
  # GET /jobs.json
  def index
    @comments = Relationship.find(params[:relationship_id]).comments


    respond_to do |format|
      format.html { render json: @comments.to_json}
      format.json { render json: @comments.to_json}
    end
  end