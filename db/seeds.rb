# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# db/seeds.rb

universities = [
  { name: 'Harvard University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/2/29/Harvard_shield_wreath.svg' },
  { name: 'Stanford University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/b/b7/Stanford_University_seal_2003.svg' },
  { name: 'Massachusetts Institute of Technology', uni_image: 'https://upload.wikimedia.org/wikipedia/commons/4/44/MIT_Seal.svg' },
  { name: 'University of Chicago', uni_image: 'https://upload.wikimedia.org/wikipedia/en/3/32/University_of_Chicago_shield.svg' },
  { name: 'Columbia University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/e/e4/Columbia_University_seal.svg' },
  { name: 'Yale University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/4/42/Yale_University_Shield_1.svg' },
  { name: 'Princeton University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/7/7e/Princeton_seal.svg' },
  { name: 'University of Pennsylvania', uni_image: 'https://upload.wikimedia.org/wikipedia/en/1/1e/UPenn_shield_with_banner.svg' },
  { name: 'California Institute of Technology', uni_image: 'https://upload.wikimedia.org/wikipedia/en/3/3a/Seal_of_the_California_Institute_of_Technology.svg' },
  { name: 'Duke University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/1/1e/Duke_University_seal.svg' },
  { name: 'Johns Hopkins University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/3/3f/Johns_Hopkins_University_seal.svg' },
  { name: 'Northwestern University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/4/4e/Northwestern_University_seal.svg' },
  { name: 'University of California, Berkeley', uni_image: 'https://upload.wikimedia.org/wikipedia/commons/8/87/UC_Berkeley_seal.svg' },
  { name: 'University of Michigan', uni_image: 'https://upload.wikimedia.org/wikipedia/commons/4/44/University_of_Michigan_seal.svg' },
  { name: 'Cornell University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/4/4a/Cornell_University_seal.svg' },
  { name: 'University of Virginia', uni_image: 'https://upload.wikimedia.org/wikipedia/en/0/0e/University_of_Virginia_seal.svg' },
  { name: 'University of Southern California', uni_image: 'https://upload.wikimedia.org/wikipedia/en/1/1b/University_of_Southern_California_seal.svg' },
  { name: 'Carnegie Mellon University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5a/Carnegie_Mellon_University_seal.svg' },
  { name: 'New York University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/6/6d/New_York_University_seal.svg' },
  { name: 'University of California, Los Angeles', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5c/UCLA_Logo.svg' },
  { name: 'Emory University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Emory_University_seal.svg' },
  { name: 'Georgetown University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/1/1a/Georgetown_University_seal.svg' },
  { name: 'University of Texas at Austin', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/University_of_Texas_at_Austin_seal.svg' },
  { name: 'University of Florida', uni_image: 'https://upload.wikimedia.org/wikipedia/en/0/0e/University_of_Florida_seal.svg' },
  { name: 'University of Notre Dame', uni_image: 'https://upload.wikimedia.org/wikipedia/en/1/1e/University_of_Notre_Dame_seal.svg' },
  { name: 'Boston University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5f/Boston_University_seal.svg' },
  { name: 'University of Washington', uni_image: 'https://upload.wikimedia.org/wikipedia/en/8/8a/University_of_Washington_seal.svg' },
  { name: 'Vanderbilt University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/9/9e/Vanderbilt_University_seal.svg' },
  { name: 'University of North Carolina at Chapel Hill', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/UNC_Chapel_Hill_seal.svg' },
  { name: 'Brown University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Brown_University_seal.svg' },
  { name: 'Rice University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Rice_University_seal.svg' },
  { name: 'University of Wisconsin-Madison', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/University_of_Wisconsin-Madison_seal.svg' },
  { name: 'Washington University in St. Louis', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Washington_University_in_St._Louis_seal.svg' },
  { name: 'University of Illinois Urbana-Champaign', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/University_of_Illinois_Urbana-Champaign_seal.svg' },
  { name: 'Georgia Institute of Technology', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/Georgia_Institute_of_Technology_seal.svg' },
  { name: 'University of Rochester', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/University_of_Rochester_seal.svg' },
  { name: 'University of Miami', uni_image: 'https://upload.wikimedia.org/wikipedia/en/5/5e/University_of_Miami_seal.svg' },
  { name: 'Ohio State University', uni_image: 'https://upload.wikimedia.org/wikipedia/en/4/41/Ohio_State_University_seal.svg' }
]
 


# Add each university to the database
universities.each do |uni|
  University.find_or_create_by(name: uni[:name]) do |university|
    university.uni_image = uni[:uni_image]
  end
end
