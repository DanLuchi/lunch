class LunchesController < ApplicationController
  # GET /lunches/new
  # GET /lunches/new.json
  def new
    @restaurants = current_user.restaurants.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant }
    end
  end

  # POST /lunches
  # POST /lunches.json
  def create
    @lunch = Lunch.new(params[:lunch])

    respond_to do |format|
      if @lunch.save
        format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
        format.json { render json: @lunch, status: :created, location: @lunch }
      else
        format.html { render action: "new" }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /lunches/1
  # GET /lunches/1.json
  def show
    @lunch = Lunch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lunch }
    end
  end
end