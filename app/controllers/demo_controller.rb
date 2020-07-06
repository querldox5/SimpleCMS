class DemoController < ApplicationController
  
  layout "application"

  def index
    #@array = ['i"m a boy',4,3,2,1]
    #render(:template => 'demo/hello')
  end

  def hello
    #render('index')
    @array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def google
    redirect_to("http://google.com")
  end

  def escape_output
    
  end

  def make_error
    #render(:text => "test") # syntax error
    #render(:text => @something.upcase) #undefined method
    render(:test => "1".to_i + 1) #cant convert type
  end

  def logging
    logger.debug("This is debug.")
    logger.info("This is info.")
    logger.warn("This is warn.")
    logger.error("This is error.")
    logger.fatal("This is fatal.")
    render plain: "Logged!"
  end
end