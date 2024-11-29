class ChatGPTService
  def self.generate_compatibility_bios(alumni, current_alum)
    # Prepare the prompt for ChatGPT
    prompt = build_prompt(alumni, current_alum)

    # Call the OpenAI API
    client = OpenAI::Client.new(access_token: "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")
    response = client.chat(
      parameters: {
        model: "gpt-4",
        prompt: prompt,
        max_tokens: 1500
      }
    )

    # Parse the response and return compatibility bios
    parse_response(response, alumni)
  end

  def self.build_prompt(alumni, current_alum)
    <<~PROMPT
      You are an AI designed to analyze compatibility for roommates. Below are details of the user looking for compatible roommates:
      - Name: #{current_alum.name}
      - Industry: #{current_alum.industry}
      - Bio: #{current_alum.bio}
      - Graduation Year: #{current_alum.graduation_year}

      Here is the list of potential roommates:
      #{alumni.map { |alum| "#{alum.name}, Industry: #{alum.industry}, Graduation Year: #{alum.graduation_year}, Bio: #{alum.bio}" }.join("\n")}

      For each potential roommate, generate a compatibility bio that explains how similar or different they are to the user based on their industry, graduation year, and bio.
    PROMPT
  end

  def self.parse_response(response, alumni)
    # Example parsing logic, adjust based on OpenAI's response format
    text = response["choices"].first["text"]
    bios = text.split("\n").map(&:strip)

    # Map bios back to alumni
    alumni.zip(bios).map do |alum, bio|
      {
        alum: alum,
        compatibility_bio: bio
      }
    end
  end
end

