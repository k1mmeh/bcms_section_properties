# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bcms_analytics_tools_session',
  :secret      => '0cde134ec141bbd2bb21b5f55adfb0fe91f7c2ea43c94276a394732328652fe43ed609b6254baf7e573c008064fc69f52ff7494282970644ef16110fc10cd560'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
