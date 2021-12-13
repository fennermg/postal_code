class Api::CodeController < ApplicationController
  def index
    if !params[:query]
      codes = Code.all
      render json: codes, status:200
    else
      codes= Code.search(params[:query])
      render json: codes, status:200
    end
  end

  def show
  end
end
