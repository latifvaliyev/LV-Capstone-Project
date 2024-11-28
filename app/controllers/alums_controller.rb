class AlumsController < ApplicationController
  def show
    @the_alum = Alum.find(params[:id])
    render({ template: "alums/show" })
  end
end
