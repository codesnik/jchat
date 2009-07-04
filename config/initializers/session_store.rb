# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chat_session',
  :secret      => 'e03d5c2b47b6b6175b7c63c2a3f777ac7a44d0b641dd355f368fcbfb072d3b39b5df02657f4eaaebd704b2d6a04d1083c5a2ce28e5a9e0df922c3bd94dcb6f9e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
