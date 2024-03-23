def extract_urls(text)
  # Regular expression pattern to match URLs
  url_pattern = %r{
    \b(?:https?|ftp):\/\/ # Match http, https, or ftp
    [-a-zA-Z0-9+&@#/%?=~_|!:,.;]* # Allow characters typically found in URLs
    [-a-zA-Z0-9+&@#/%=~_|] # Exclude certain characters
  }x

  # Extract URLs from the text using the pattern
  text.scan(url_pattern) do |url|
    puts url
  end
end

# Sample text
sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

# Extract URLs from the sample text
extract_urls(sample_text)
