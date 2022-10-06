class StaticPagesController < ApplicationController
  def home
   @comparators = ComparatorPost.order(created_at: :desc)[..3]
  end

  def about
  end

  def settings
  end

  def legal

  end

  def contact

  end

  def support
    @supports = Support.where(active: true)
  end
end
