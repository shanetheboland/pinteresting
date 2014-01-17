# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Pinteresting::Application.initialize!

config.paperclip_defaults = {
  :storage => :s3,
  :s3_credentials => {
    :bucket => ENV['AWS_BUCKET'],
    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  }
}
