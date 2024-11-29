require_relative "../services/chat_gpt_service"

class RoommatesController < ApplicationController
  def new
    # Populate unique cities from the database for the dropdown
    @cities = Unit.select(:city).distinct.pluck(:city)
  end

  def create
    # Get user-selected city and graduation year range
    city = params[:city]
    year_range = params[:grad_year_range].to_i

    # Ensure current_alum is available
    unless current_alum
      redirect_to new_alum_session_path, alert: "You need to sign in to find compatible roommates."
      return
    end

    # Filter alumni with units in the selected city
    filtered_alumni = Alum.joins(:units)
                          .where(units: { city: city })
                          .where(graduation_year: (current_alum.graduation_year - year_range)..(current_alum.graduation_year + year_range))
                          .where.not(id: current_alum.id) # Exclude the current user

    # Use ChatGPT to generate compatibility bios for the filtered alumni
    @results = ChatGPTService.generate_compatibility_bios(filtered_alumni, current_alum)

    render({ template: "roommates/results" })
  end
end
