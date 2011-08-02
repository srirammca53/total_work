class RegistersController < ApplicationController
  def index
    @registers = Register.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @registers }
    end
  end

  def show
    @register = Register.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
     
    end
  end

  def new
    @register = Register.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end


  def edit
    @register = Register.find(params[:id])
  end

  def create
    @register = Register.new(params[:register])

    respond_to do |format|
      if @register.save
        format.html { redirect_to(@register, :notice => 'Account was successfully created.') }
        
      else
        format.html { render :action => "new" }
        
      end
    end
  end

  def update
    @register = Register.find(params[:id])

    respond_to do |format|
      if @register.update_attributes(params[:register])
        format.html { redirect_to(@register, :notice => 'register was successfully updated.') }
       
      else
        format.html { render :action => "edit" }
        
      end
    end
  end

  def destroy
    @register = Register.find(params[:id])
    @register.destroy

    respond_to do |format|
      format.html { redirect_to(registers_url) }
      
    end
  end
end
