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

# Ensure University of Chicago exists
university = University.find_by(name: "University of Chicago")
if university.nil?
  puts "University of Chicago not found. Please seed universities first!"
  return
end

# Seed Alumni and Units
alumni_with_units = [
  {
    name: "John Doe",
    email: "john.doe@example.com",
    graduation_year: 2010,
    industry: "Finance",
    bio: "A seasoned investment banker with a love for classic literature.",
    unit: {
      address: "101 Elm St, Chicago, IL",
      unit_bio: "A modern high-rise apartment with stunning city views."
    }
  },
  {
    name: "Jane Smith",
    email: "jane.smith@example.com",
    graduation_year: 2012,
    industry: "Tech",
    bio: "A tech entrepreneur passionate about blockchain and AI.",
    unit: {
      address: "202 Pine Ave, Chicago, IL",
      unit_bio: "A sleek, minimalist loft in a trendy neighborhood."
    }
  },
  {
    name: "Alice Johnson",
    email: "alice.johnson@example.com",
    graduation_year: 2015,
    industry: "Healthcare",
    bio: "A public health advocate working on equitable healthcare access.",
    unit: {
      address: "303 Oak St, Chicago, IL",
      unit_bio: "A cozy one-bedroom apartment near the hospital district."
    }
  },
  {
    name: "Bob Brown",
    email: "bob.brown@example.com",
    graduation_year: 2017,
    industry: "Education",
    bio: "A high school teacher with a passion for mentoring young minds.",
    unit: {
      address: "404 Birch Rd, Chicago, IL",
      unit_bio: "A charming unit in a family-friendly area with great schools."
    }
  },
  {
    name: "Catherine Lee",
    email: "catherine.lee@example.com",
    graduation_year: 2020,
    industry: "Arts",
    bio: "A freelance graphic designer exploring the world of digital art.",
    unit: {
      address: "505 Maple Dr, Chicago, IL",
      unit_bio: "An artsy apartment with a personal studio space."
    }
  },
  {
    name: "Michael Carter",
    email: "michael.carter@example.com",
    graduation_year: 2021,
    industry: "Law",
    bio: "A corporate lawyer who enjoys marathon running and jazz music.",
    unit: {
      address: "606 Spruce Ct, Chicago, IL",
      unit_bio: "A spacious townhouse with a quiet home office."
    }
  },
  {
    name: "Sophia Taylor",
    email: "sophia.taylor@example.com",
    graduation_year: 2018,
    industry: "Science",
    bio: "A climate scientist focused on renewable energy solutions.",
    unit: {
      address: "707 Willow Ln, Chicago, IL",
      unit_bio: "A green-certified apartment with energy-efficient features."
    }
  },
  {
    name: "James Wilson",
    email: "james.wilson@example.com",
    graduation_year: 2014,
    industry: "Engineering",
    bio: "A civil engineer designing sustainable urban infrastructure.",
    unit: {
      address: "808 Cedar St, Chicago, IL",
      unit_bio: "A newly renovated condo near public transport hubs."
    }
  },
  {
    name: "Emma Davis",
    email: "emma.davis@example.com",
    graduation_year: 2016,
    industry: "Nonprofit",
    bio: "A nonprofit organizer advocating for education equity.",
    unit: {
      address: "909 Walnut Rd, Chicago, IL",
      unit_bio: "A sunny apartment close to local charity headquarters."
    }
  },
  {
    name: "Oliver Martinez",
    email: "oliver.martinez@example.com",
    graduation_year: 2019,
    industry: "Entrepreneurship",
    bio: "A serial entrepreneur with ventures in e-commerce and logistics.",
    unit: {
      address: "1010 Ash Ave, Chicago, IL",
      unit_bio: "A stylish apartment with a dedicated co-working space."
    }
  },
  {
    name: "Isabella Harris",
    email: "isabella.harris@example.com",
    graduation_year: 2023,
    industry: "Tech",
    bio: "A software developer specializing in mobile app design.",
    unit: {
      address: "1111 Poplar St, Chicago, IL",
      unit_bio: "A trendy downtown apartment with smart home features."
    }
  },
  {
    name: "Ethan White",
    email: "ethan.white@example.com",
    graduation_year: 2022,
    industry: "Finance",
    bio: "A financial analyst passionate about fintech innovations.",
    unit: {
      address: "1212 Beech St, Chicago, IL",
      unit_bio: "A classic apartment close to the financial district."
    }
  },
  {
    name: "Mia Walker",
    email: "mia.walker@example.com",
    graduation_year: 2024,
    industry: "Healthcare",
    bio: "A nursing student dedicated to improving patient care.",
    unit: {
      address: "1313 Sycamore Rd, Chicago, IL",
      unit_bio: "A peaceful studio apartment near the university hospital."
    }
  },
  {
    name: "Liam Robinson",
    email: "liam.robinson@example.com",
    graduation_year: 2025,
    industry: "Education",
    bio: "An aspiring teacher with a passion for literacy programs.",
    unit: {
      address: "1414 Fir Ln, Chicago, IL",
      unit_bio: "A warm and welcoming apartment perfect for a book lover."
    }
  },
  {
    name: "Ava Hall",
    email: "ava.hall@example.com",
    graduation_year: 2026,
    industry: "Law",
    bio: "A law student specializing in environmental justice.",
    unit: {
      address: "1515 Chestnut St, Chicago, IL",
      unit_bio: "A sophisticated unit with a private study area."
    }
  },
  {
    name: "Noah Clark",
    email: "noah.clark@example.com",
    graduation_year: 2013,
    industry: "Arts",
    bio: "A theater actor with a flair for storytelling and creativity.",
    unit: {
      address: "1616 Magnolia Dr, Chicago, IL",
      unit_bio: "A vibrant apartment near the theater district."
    }
  },
  {
    name: "Charlotte Adams",
    email: "charlotte.adams@example.com",
    graduation_year: 2011,
    industry: "Engineering",
    bio: "An aerospace engineer working on cutting-edge technologies.",
    unit: {
      address: "1717 Cypress St, Chicago, IL",
      unit_bio: "A modern apartment with excellent transit connections."
    }
  },
  {
    name: "Elijah Nelson",
    email: "elijah.nelson@example.com",
    graduation_year: 2029,
    industry: "Science",
    bio: "A physics researcher exploring quantum computing.",
    unit: {
      address: "1818 Holly Rd, Chicago, IL",
      unit_bio: "A sleek apartment near the research center."
    }
  },
  {
    name: "Amelia Baker",
    email: "amelia.baker@example.com",
    graduation_year: 2030,
    industry: "Nonprofit",
    bio: "A social worker driven to create impactful change.",
    unit: {
      address: "1919 Maple Ave, Chicago, IL",
      unit_bio: "A community-centered apartment with shared amenities."
    }
  },
  {
    name: "Lucas Perez",
    email: "lucas.perez@example.com",
    graduation_year: 2028,
    industry: "Entrepreneurship",
    bio: "A young entrepreneur launching a sustainable fashion brand.",
    unit: {
      address: "2020 Redwood St, Chicago, IL",
      unit_bio: "A chic apartment with eco-friendly decor."
    }
  }
]

alumni_with_units.each do |data|
  alum = Alum.create!(
    name: data[:name],
    email: data[:email],
    password: "password",
    password_confirmation: "password",
    uni_id: university.id,
    graduation_year: data[:graduation_year],
    industry: data[:industry],
    linkedin: "https://www.linkedin.com/in/#{data[:name].parameterize}",
    bio: data[:bio]
  )

  Unit.create!(
    city: "Chicago",
    address: data[:unit][:address],
    unit_image: "https://via.placeholder.com/150",
    unit_bio: data[:unit][:unit_bio],
    alum_id: alum.id
  )
end

puts "Seeded 20 alumni from the University of Chicago, each with a unit in Chicago."
