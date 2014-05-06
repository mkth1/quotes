class QuotesController < ApplicationController
  
  def index
    @quote = Quote.order("RAND()").first()
  end

  def new
     @quote = Quote.new
  end


  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:notice] = @quote.author + " Quote created successfully"
      redirect_to(root_url)
    else
      render('new')
    end
  end

  def contact
    
  end

  private
    def quote_params
      params.require(:quote).permit(:author,:text)
    end

end
