require_relative "../services/chat_gpt_service"

class RoommatesController < ApplicationController
  def new
    # Populate unique cities from the database for the dropdown
    @cities = Unit.select(:city).distinct.pluck(:city)
  end

  def create
    city = params[:city]
    year_range = params[:grad_year_range].to_i

    # Ensure the user is signed in
    unless current_alum
      redirect_to new_alum_session_path, alert: "You need to sign in to find compatible roommates."
      return
    end

    # Filter alumni
    filtered_alumni = Alum.joins(:units)
                          .where(units: { city: city })
                          .where(graduation_year: (current_alum.graduation_year - year_range)..(current_alum.graduation_year + year_range))
                          .where.not(id: current_alum.id)

    # Handle case where no results are found
    if filtered_alumni.empty?
      redirect_to "/find_roommates", alert: "No compatible roommates found for the selected criteria."
      return
    end

    # Call ChatGPT to generate compatibility bios
    @results = ChatGPTService.generate_compatibility_bios(filtered_alumni, current_alum)

    # Render results
    render({ template: "roommates/results" })
  end
end
