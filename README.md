# Mina Cloudflare Purge

Purge files from a Cloudflare zone cache.

## Installation

## Usage

```
# Your Mina deploy.rb file

require 'mina/cloudflare_purge'

set :cloudflare_zone, 'zone_id'
set :cloudflare_auth_email, 'email@example.com'
set :cloudflare_auth_key, 'auth_key'

...

task :deploy do
  deploy do
    # Deploy stuff
    on :launch do
      # Launch stuff
    end
  end
  # Run the task locally after the deployment has finished successfully
  # Note this happens outside of the deploy block
  run :local do
    command 'bundle exec mina cloudflare:purge:all_files'
  end
end
```
