# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_exp_authlogic_session',
  :secret      => '245f98e5a77ee52a0cda4072b6c358509f6ee8db01ea2bb317bb739fa777726735b869d36c63d5f33faca8e76a9099d4ed4d4309f34af1b978b14a1d4437fc57'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
