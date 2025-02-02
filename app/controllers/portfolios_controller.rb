class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def ruby_on_rails
		@ruby_on_rails_portfolio_items = Portfolio.ruby_on_rails_portfolio_items
	end

	def angular
		@angular_portfolio_items = Portfolio.angular_portfolio_items
	end

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end
	
  # POST /blogs
  # POST /blogs.json
  	def create
	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
	      else
	        format.html { render :new }
	      end
	    end
  	end

  	def edit
	    @portfolio_item = Portfolio.find(params[:id])
  	end

  	def update
  		@portfolio_item = Portfolio.find(params[:id])

	    respond_to do |format|
			if @portfolio_item.update(portfolio_params)
			    format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
			else
			    format.html { render :edit }
			end
		end
    end

    def show
    	@portfolio_item = Portfolio.find(params[:id])
	end  

	 def destroy
 		@portfolio_item = Portfolio.find(params[:id])
	    @portfolio_item.destroy
	    respond_to do |format|
	      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully deleted.' }
	    end
	 end

	 private

	 def portfolio_params
	   params.require(:portfolio).permit(:title,
	   	                                 :subtitle,
	   	                                 :body,
	   	                                 technologies_attributes: [:name]
	   	                                 )
	 end
end
