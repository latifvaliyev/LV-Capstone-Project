class UniversitiesController < ApplicationController
  def index
    matching_universities = University.all

    @list_of_universities = matching_universities.order({ :created_at => :desc })

    render({ :template => "universities/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_universities = University.where({ :id => the_id })

    @the_university = matching_universities.at(0)

    render({ :template => "universities/show" })
  end

  def create
    the_university = University.new
    the_university.name = params.fetch("query_name")
    the_university.uni_image = params.fetch("query_uni_image")

    if the_university.valid?
      the_university.save
      redirect_to("/universities", { :notice => "University created successfully." })
    else
      redirect_to("/universities", { :alert => the_university.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_university = University.where({ :id => the_id }).at(0)

    the_university.name = params.fetch("query_name")
    the_university.uni_image = params.fetch("query_uni_image")

    if the_university.valid?
      the_university.save
      redirect_to("/universities/#{the_university.id}", { :notice => "University updated successfully."} )
    else
      redirect_to("/universities/#{the_university.id}", { :alert => the_university.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_university = University.where({ :id => the_id }).at(0)

    the_university.destroy

    redirect_to("/universities", { :notice => "University deleted successfully."} )
  end
end
