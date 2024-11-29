class UnitsController < ApplicationController
  def index
    if params[:city].present?
      matching_units = Unit.where(city: params[:city])
    else
      matching_units = Unit.all
    end
  
    @list_of_units = matching_units.order({ :created_at => :desc })
  
    render({ :template => "units/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_units = Unit.where({ :id => the_id })

    @the_unit = matching_units.at(0)

    render({ :template => "units/show" })
  end

  def create
    the_unit = Unit.new
    the_unit.city = params.fetch("query_city")
    the_unit.alum_id = current_alum.id
    the_unit.address = params.fetch("query_address")
    the_unit.unit_image = params.fetch("query_unit_image")
    the_unit.unit_bio = params.fetch("query_unit_bio")

    if the_unit.valid?
      the_unit.save
      redirect_to("/units", { :notice => "Unit created successfully." })
    else
      redirect_to("/units", { :alert => the_unit.errors.full_messages.to_sentence })
    end
  end

  def update
    before_action :ensure_occupant, only: [:edit, :update]

private

def ensure_occupant
  unit = Unit.find(params[:id])
  unless current_user == unit.alum
    redirect_to unit_path(unit), alert: "You are not authorized to edit this unit."
  end
end
    the_id = params.fetch("path_id")
    the_unit = Unit.where({ :id => the_id }).at(0)

    the_unit.city = params.fetch("query_city")
    the_unit.alum_id = current_alum.id
    the_unit.address = params.fetch("query_address")
    the_unit.unit_image = params.fetch("query_unit_image")
    the_unit.unit_bio = params.fetch("query_unit_bio")

    if the_unit.valid?
      the_unit.save
      redirect_to("/units/#{the_unit.id}", { :notice => "Unit updated successfully."} )
    else
      redirect_to("/units/#{the_unit.id}", { :alert => the_unit.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_unit = Unit.where({ :id => the_id }).at(0)

    the_unit.destroy

    redirect_to("/units", { :notice => "Unit deleted successfully."} )
  end
end
