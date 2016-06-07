class UsersController < ApplicationController

   

  def imei_action
     
     @imei = params[:imeino]

p "*********************************"
     @user = User.find_by_imeino(@imei)

   p  @user.id
   #@loca = @user.locations.find_by_user_id(@user.id)


p "*********************************"
     p @lat = params[:latitude]
     p @lon = params[:longitude]
      
p "*********************************"
    p @loc = @user.locations.create(:latitude => @lat, :longitude => @lon)


   
  # @cat = params[:imei]
   #@user.update_attributes(:imeino => @cat)
   #search = params[:search]
   #@page =params[:page]
    #if request.post?
     
   #end
  end


 
  def index
    @users = User.all
    
  end

  def show
   @users = current_user
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(params[:user])
        if @user.save
         #session[:user_id] = @user.id
          redirect_to root_url
          
        else
          render :action => 'new'
          
        end
  end

end

