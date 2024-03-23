def parse_invoices(invoice_data)
  # Regular expression pattern to match each invoice entry
  invoice_pattern = /^(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)$/

  # Iterate through each line of the invoice data
  invoice_data.each_line do |line|
    # Match the line against the pattern
    match_data = line.match(invoice_pattern)

    # Extract and display details if there's a match
    if match_data
      date = match_data[1]
      invoice_number = match_data[2]
      client_name = match_data[3]
      amount = match_data[4]

      # Display the extracted details in a structured format
      puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
    end
  end
end

# Sample invoice data
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

# Parse the invoice entries
parse_invoices(invoice_entries)
