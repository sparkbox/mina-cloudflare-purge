require './lib/mina_cloudflare_purge/version'

Gem::Specification.new do |s|
  s.name = 'mina-cloudflare-purge'
  s.version = MinaCloudflarePurge.version
  s.author = 'Mike Yockey'
  s.email = 'mike@heysparkbox.com'
  s.homepage = 'https://github.com/sparkbox/mina-cloudflare-purge'
  s.license = 'MIT'
  s.files = `git ls-files`.split($/)
  s.summary = 'Purges all Cloudflare files during deployments'

  s.add_development_dependency 'minitest', '>= 5.9.1'
end
