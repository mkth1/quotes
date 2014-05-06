class QuotesController < ApplicationController
  
  def index
    
    #for postgres random() and for mysql rand()
    #@randomQuites = Quote.order("RANDOM()")
    #quotes = Quote.order("RAND()");
    #@quote = quotes[0];

    @quote = Quote.order("RAND()").first()
  end

  def new
     @quote = Quote.new
  end


  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:notice] = @quote.author + " Auote created successfully"
        redirect_to(:action => 'index')
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
