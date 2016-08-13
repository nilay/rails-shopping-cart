class IndicesController < ApplicationController
  before_action :set_index, only: [:show, :edit, :update, :destroy]

  # GET /indices
  # GET /indices.json
  def index
    @merchant_url = params[:merchant_url]
  end

  # GET /indices/1
  # GET /indices/1.json
  def show
  end


  # GET /indices/1/edit
  def edit
  end

  # POST /indices
  def create
    # fails once in 10 attempt
    status = rand(1..10) == 10 ? 'fail' : 'success'
    merchant_url = params[:merchant_url]

    redirect_to "#{merchant_url}?status=#{status}"
  end

end
