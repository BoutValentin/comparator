class ComparatorPostsController < ApplicationController
  def show
    @comparators = ComparatorPost.order(created_at: :desc).page(params_permit_show[:page])
  end

  def random
    @comparator = ComparatorPost.all.sample(1).first
  end

  private
  def params_permit_show
    params.permit(:page)
  end
end
