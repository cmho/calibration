Admin.controllers :characters do

  get :index do
    @characters = Character.all
    render 'characters/index'
  end

  get :new do
    @character = Character.new
    render 'characters/new'
  end

  post :create do
    @character = Character.new(params[:character])
    if @character.save
      flash[:notice] = 'Character was successfully created.'
      redirect url(:characters, :edit, :id => @character.id)
    else
      render 'characters/new'
    end
  end

  get :edit, :with => :id do
    @character = Character.find(params[:id])
    render 'characters/edit'
  end

  put :update, :with => :id do
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      flash[:notice] = 'Character was successfully updated.'
      redirect url(:characters, :edit, :id => @character.id)
    else
      render 'characters/edit'
    end
  end

  delete :destroy, :with => :id do
    character = Character.find(params[:id])
    if character.destroy
      flash[:notice] = 'Character was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Character!'
    end
    redirect url(:characters, :index)
  end
end
