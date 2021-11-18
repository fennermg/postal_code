class CodeController < ApplicationController
  def index
    @search=false
    if params[:query]
      @code= Code.find_by postal_code: params[:query]

      if @code.nil?
        puts "NotFound"
        @search = true
      end
    else
      @code=nil
    end
  end
end
