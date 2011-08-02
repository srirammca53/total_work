class DocumentsController < ApplicationController
 def index
    @documents = Document.all    
  end

  def show
    @document = Document.find(params[:id])
  end

  def new
    @document = Document.new 
  end

  def edit
    @document = Document.find(params[:id])
  end

  def create
    @document = Document.new (params[:document])
     pic = params[:document][:file]
 if @document.file = pic.original_filename
  FileUtils.copy(pic.path, "#{Rails.root}/public/myfiles/#{pic.original_filename}")
    path = "#{Rails.root}/public/myfiles/#{pic.original_filename}"
  render :text => "#{path}" and return
      if @document.save
       redirect_to(@document, :notice => 'document was successfully created.')
      else
    render :action => "new"    
      end
   end
  end

  def update
    @document = Document.find(params[:id])
      if @document.update_attributes(params[:document])
        redirect_to(@document, :notice => 'document was successfully updated.')   
      else
        render :action => "edit" 
      
      
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to(documents_url) 
 
    end
end
