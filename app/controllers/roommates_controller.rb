class RoommatesController < ApplicationController
  class RoommatesController < ApplicationController
    def new
      # Populate unique cities from the database for the dropdown
      @cities = Unit.select(:city).distinct.pluck(:city)
    end
  
    def create
      # Get user-selected city and graduation year range
      city = params[:city]
      year_range = params[:grad_year_range].to_i
  
      # Get the current alum's details
      current_alum = current_alum
  
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
