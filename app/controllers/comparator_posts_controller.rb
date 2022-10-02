class ComparatorPostsController < ApplicationController
  def show
    @comparators = ComparatorPost.order(created_at: :desc).page(params_permit_show[:page])
  end

  def random
    @comparator = ComparatorPost.all.sample(1).first
  end

  def index
    @comparator = ComparatorPost.find(params_permit_index[:id])
  end

  private
  def params_permit_show
    params.permit(:page)
  end

  def params_permit_index
    params.permit(:id)
  end
end
