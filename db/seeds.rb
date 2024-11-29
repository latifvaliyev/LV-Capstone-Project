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
  { name: 'Harvard University', uni_image: 'university logos/harvard.png' },
  { name: 'Stanford University', uni_image: 'university logos/stanford.webp' },
  { name: 'Massachusetts Institute of Technology', uni_image: 'university logos/MIT.png' },
  { name: 'University of Chicago', uni_image: 'university logos/uchicago.webp' },
  { name: 'Columbia University', uni_image: 'university logos/columbia.png' },
  { name: 'Yale University', uni_image: 'university logos/yale.png' },
  { name: 'Princeton University', uni_image: 'university logos/princeton.png' },
  { name: 'University of Pennsylvania', uni_image: 'university logos/penn.png' },
  { name: 'California Institute of Technology', uni_image: 'university logos/caltech.png' },
  { name: 'Duke University', uni_image: 'university logos/duke.png' },
  { name: 'Johns Hopkins University', uni_image: 'university logos/johns hopkins.png' },
  { name: 'Northwestern University', uni_image: 'university logos/northwester.svg' },
  { name: 'University of California, Berkeley', uni_image: 'university logos/berkely.png' },
  { name: 'University of Michigan', uni_image: 'university logos/umich.png' },
  { name: 'Cornell University', uni_image: 'university logos/cornell.png' },
  { name: 'University of Virginia', uni_image: 'university logos/virginia.png' },
  { name: 'University of Southern California', uni_image: 'university logos/USC.png' },
  { name: 'Carnegie Mellon University', uni_image: 'university logos/carnegie mellon.png' },
  { name: 'New York University', uni_image: 'university logos/nyu.png' },
  { name: 'University of California, Los Angeles', uni_image: 'university logos/ucla.png' },
  { name: 'Emory University', uni_image: 'university logos/emory.jpeg' },
  { name: 'Georgetown University', uni_image: 'university logos/georgetown.png' },
  { name: 'University of Texas at Austin', uni_image: 'university logos/utexas.png' },
  { name: 'University of Florida', uni_image: 'university logos/UF.webp' },
  { name: 'University of Notre Dame', uni_image: 'university logos/notre dame.png' },
  { name: 'Boston University', uni_image: 'university logos/Boston university.png' },
  { name: 'University of Washington', uni_image: 'university logos/uwashington.png' },
  { name: 'Vanderbilt University', uni_image: 'university logos/vanderbilt.png' },
  { name: 'University of North Carolina at Chapel Hill', uni_image: 'university logos/north carolina.png' },
  { name: 'Brown University', uni_image: 'university logos/brown.png' },
  { name: 'Rice University', uni_image: 'university logos/rice.svg' },
  { name: 'University of Wisconsin-Madison', uni_image: 'university logos/wisconsin.png' },
  { name: 'Washington University in St. Louis', uni_image: 'university logos/wash u.png' },
  { name: 'University of Illinois Urbana-Champaign', uni_image: 'university logos/uiuc.png' },
  { name: 'Georgia Institute of Technology', uni_image: 'university logos/georgia tech.png' },
  { name: 'University of Rochester', uni_image: 'university logos/rochester.png' },
  { name: 'University of Miami', uni_image: 'university logos/miami.png' },
  { name: 'Ohio State University', uni_image: 'university logos/ohio.webp' }
]

 


# Add each university to the database
universities.each do |uni|
  university = University.find_or_initialize_by(name: uni[:name])
  university.uni_image = uni[:uni_image]
  university.save!
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
