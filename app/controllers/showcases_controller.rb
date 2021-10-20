class ShowcasesController < ApplicationController
  def index
    if params[:order].present?
      if params[:order] == "arrival"
        @showcases = Showcase.order(created_at: :desc)
      end
    else
      @showcases = Showcase.all
    end
  end
end
