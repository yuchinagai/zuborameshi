# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# 静的なファイルをRailsから返す
config.public_file_server.enabled = true
