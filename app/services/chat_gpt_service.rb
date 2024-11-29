class ChatGPTService
  API_KEY = "your_api_key_here"

  def self.generate_compatibility_bios(alumni, current_alum)
    # Build the prompt
    prompt = build_prompt(alumni, current_alum)

    # Call the OpenAI API
    client = OpenAI::Client.new(access_token: "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")
    response = client.chat(
      parameters: {
        model: "gpt-4",
        messages: [
          { role: "system", content: "You are an AI designed to analyze compatibility for roommates." },
          { role: "user", content: prompt }
        ],
        max_tokens: 1500
      }
    )

    # Parse the response and return compatibility bios
    parse_response(response, alumni)
  end

  def self.build_prompt(alumni, current_alum)
    "User Details:\n" \
    "Name: #{current_alum.name}\n" \
    "Industry: #{current_alum.industry}\n" \
    "Bio: #{current_alum.bio}\n" \
    "Graduation Year: #{current_alum.graduation_year}\n\n" \
    "Potential Roommates:\n" \
    "#{alumni.map { |alum| "Name: #{alum.name}, Industry: #{alum.industry}, Graduation Year: #{alum.graduation_year}, Bio: #{alum.bio}" }.join("\n")}\n" \
    "For each roommate, explain their compatibility with the user."
  end

  def self.parse_response(response, alumni)
    # Extract the response text
    text = response["choices"].first.dig("message", "content")

    # Process compatibility bios
    bios = text.split("\n").map(&:strip)

    # Map bios back to alumni
    alumni.zip(bios).map do |alum, bio|
      { alum: alum, compatibility_bio: bio }
    end
  end
end
