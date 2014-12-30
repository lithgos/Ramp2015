class CommentsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # GET /jobs
  # GET /jobs.json
  def index
    @comments = Relationship.find(params[:relationship_id]).comments


    respond_to do |format|
      format.html { render json: @comments.to_json}
      format.json { render json: @comments.to_json}
    end
  end

  def create
    @comment = Comment.new(content: params[:content], relationship_id: params[:relationship_id])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end



end