class SpacesController < ApplicationController
  http_basic_authenticate_with :name => "freeze", :password => "sustain", :realm => "You need to login to see more of this page.", :except => [:index, :show]

  # GET /spaces
  # GET /spaces.json
  def index
    @spaces = Space.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaces }
    end
  end

  # GET /spaces/1
  # GET /spaces/1.json
  def show
    @space = Space.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @space }
    end
  end

  # GET /spaces/new
  # GET /spaces/new.json
  def new
    @space = Space.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @space }
    end
  end

  # GET /spaces/1/edit
  def edit
    @space = Space.find(params[:id])
  end

  # POST /spaces
  # POST /spaces.json
  def create
    @space = Space.new(params[:space])

    notify_user "+19492327008"

    respond_to do |format|
      if @space.save
        format.html { redirect_to @space, notice: 'Space was successfully created.' }
        format.json { render json: @space, status: :created, location: @space }
      else
        format.html { render action: "new" }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spaces/1
  # PUT /spaces/1.json
  def update
    @space = Space.find(params[:id])

    respond_to do |format|
      if @space.update_attributes(params[:space])
        format.html { redirect_to @space, notice: 'Space was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    respond_to do |format|
      format.html { redirect_to spaces_url }
      format.json { head :no_content }
    end
  end

  def notify_user number
    account_sid = "AC8a8f5d85af54eef44f70b66931af0043"
    auth_token = "9eb86102da1a4575516cf0d5ab38f7b0"
    from = "+19512254918"

    client = Twilio::REST::Client.new account_sid, auth_token
    client.account.sms.messages.create(:from => from, :to => number, :body => "Hey fellow, we just found a space for you! Go to spacefreeze.com to book it.")
  end
end
