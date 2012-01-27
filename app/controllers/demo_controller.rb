class DemoController < ApplicationController
  def index
    #render('hello')
    #redirect_to(:action => 'hello')
  end
  
  def hello
    @array = [1,2,3,4]
    @id = params[:id].to_i
    @page = params[:page].to_i
  end
  
  def other_hello
    render(:text => 'Cehllo')
  end

end
