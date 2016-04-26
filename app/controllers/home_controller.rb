class HomeController < ApplicationController
  
  def index
  end
  
  def write
      @pw = Random.rand(0..9999)
    
      temp_paper = Paper.new
      temp_paper.nickname = params[:nickname]
      temp_paper.content = params[:content]
      temp_paper.password = @pw
      temp_paper.save
      
      @temp_paper_id = temp_paper.id
  end
  
  def display
      @papers = Paper.all.order("id desc")
  end
  
  def search
  end
  
  def search_process
      @nickname = params[:nickname]
      @id = params[:id]
      @pw = params[:pw]
      
      @paper = Paper.find(@id)
      
      if @paper.password == @pw
        redirect_to "/mypaper/#{@id}"
      else
        redirect_to "/search"
      end
  end
  
  def reply
  end
  
  def mypaper
    @id=params[:id]
    @paper=Paper.find(@id)
  end
  
  def delete
    @one_paper = Paper.find(params[:id])
    @one_paper.destroy
    redirect_to "/display"
  end
  
  def update_view
    @one_paper = Paper.find(params[:id])
  end
  
  def update
    @one_paper = Paper.find(params[:id])
    @one_paper.content = params[:content]
    @one_paper.save
    redirect_to "/display"
  end
  
end
