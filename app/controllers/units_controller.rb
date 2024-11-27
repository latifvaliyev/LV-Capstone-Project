class UnitsController < ApplicationController
  def index
    matching_units = Unit.all

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
    the_unit.alum_id = params.fetch("query_alum_id")
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
    the_id = params.fetch("path_id")
    the_unit = Unit.where({ :id => the_id }).at(0)

    the_unit.city = params.fetch("query_city")
    the_unit.alum_id = params.fetch("query_alum_id")
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
