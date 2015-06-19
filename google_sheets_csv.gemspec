Gem::Specification.new do |s|
  s.name        = 'Google Sheets CSV'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "CSV interface for Google Sheets"
  s.description = "Extension to Google Drive to read and write to Google Sheets with csv-like syntax"
  s.authors     = ["Becky Segal"]
  s.email       = 'becky@barkbox.com'
  s.files       = ["lib/google_sheets_csv.rb"]
  s.homepage    = 'https://github.com/barkbox/google_sheets_csv'

  s.files = Dir["lib/**/*"]
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'google_drive', '1.0.0'
end
