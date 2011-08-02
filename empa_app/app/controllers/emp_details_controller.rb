class EmpDetailsController < ApplicationController
  # GET /emp_details
  # GET /emp_details.xml
  def index
    @emp_details = EmpDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emp_details }
    end
  end

  # GET /emp_details/1
  # GET /emp_details/1.xml
  def show
    @emp_detail = EmpDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emp_detail }
    end
  end

  # GET /emp_details/new
  # GET /emp_details/new.xml
  def new
    @emp_detail = EmpDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emp_detail }
    end
  end

  # GET /emp_details/1/edit
  def edit
    @emp_detail = EmpDetail.find(params[:id])
  end

  # POST /emp_details
  # POST /emp_details.xml
  def create
    @emp_detail = EmpDetail.new(params[:emp_detail])

    respond_to do |format|
      if @emp_detail.save
        format.html { redirect_to(@emp_detail, :notice => 'Emp detail was successfully created.') }
        format.xml  { render :xml => @emp_detail, :status => :created, :location => @emp_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emp_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emp_details/1
  # PUT /emp_details/1.xml
  def update
    @emp_detail = EmpDetail.find(params[:id])

    respond_to do |format|
      if @emp_detail.update_attributes(params[:emp_detail])
        format.html { redirect_to(@emp_detail, :notice => 'Emp detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emp_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_details/1
  # DELETE /emp_details/1.xml
  def destroy
    @emp_detail = EmpDetail.find(params[:id])
    @emp_detail.destroy

    respond_to do |format|
      format.html { redirect_to(emp_details_url) }
      format.xml  { head :ok }
    end
  end
end
