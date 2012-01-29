class SystemeventsController < ApplicationController
  respond_to :html, :xml, :json
  helper_method :sort_column, :sort_direction
  def index
    @systemevents = Systemevent.search(params[:search]).all.paginate(:page => params[:page])
    
    respond_to do |format|
      format.html
      format.json { render json: @systemevents }
    end
  end
  
  def self.search(search)  
    if search  
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])  
    else  
      find(:all)  
    end  
  end
  
  private  
  def sort_column  
    Systemevent.column_names.include?(params[:sort]) ? params[:sort] : "devicereportedtime"  
  end
    
  def sort_direction  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
end
