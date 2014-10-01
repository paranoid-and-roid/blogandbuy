class ReviewsController < ApplicationController
  before_filter :ensure_admin, :except => [:new, :create, :edit, :update, :destroy]
  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.paginate(page: params[:page], :per_page => 10)#.joins(:user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = current_user.reviews.build(params[:review])
   # @review = Review.new(params[:review])

    respond_to do |format|
      if @review.save
       # This is the original line of code, for when an editor must pass the review
       # format.html { redirect_to films_url, notice: 'Thank you. Your review will be posted once it is checked by an administrator' }

       # And the code I'm using for the deployment
        format.html { redirect_to :back, notice: 'Your review has been successfully posted' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      # @review.accepted = false
      if @review.update_attributes(params[:review])
       # format.html { redirect_to films_url, notice: 'Thank you. Your updated review will be posted once it is checked by an administrator' }

        format.html { redirect_to films_path, notice: 'Your review has been successfully updated' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      # The original line of code, for when an editor must pass the review
      # format.html { redirect_to reviews_url }

      # The code I'm using for the deployment
      format.html { redirect_to :back, notice: 'Your review has been successfully deleted' }
      format.json { head :no_content }
    end
  end
end
