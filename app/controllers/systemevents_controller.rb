class SystemEventsController < InheritedResources::Base
  respond_to :html, :xml, :json

  def index
    @search = SystemEvent.search(params[:search])
    if (params[:format] || 'html') == 'html'
      @systemevents = @search.order(:id).page(params[:page])
    else
      @systemevents = @search.all
    end
  end
  
end
