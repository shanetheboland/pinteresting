# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Pinteresting::Application.initialize!

config.paperclip_defaults = {
  :storage => :s3,
  :s3_credentials => {
    :bucket => ENV['shane-pinteresting'],
    :access_key_id => ENV['AKIAJSB2NXRSWNPOLCHQ'],
    :secret_access_key => ENV['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']
  }
}
