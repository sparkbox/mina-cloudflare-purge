namespace :cloudflare do
  namespace :purge do
    desc 'Remove ALL files from CloudFlare\'s cache'
    task :all_files => :environment do
      cf = CloudFlare.new(
        auth_email: fetch(:cloudflare_auth_email),
        auth_key: fetch(:cloudflare_auth_key)
      )
      cf.purge_cache(fetch(:cloudflare_zone))
    end
  end
end
