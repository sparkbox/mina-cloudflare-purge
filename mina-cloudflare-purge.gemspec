Gem::Specification.new do |s|
  s.name = 'mina-cloudflare-purge'
  s.version = '0.0.0'
  s.author = 'Mike Yockey'
  s.email = 'mike@heysparkbox.com'
  s.homepage = 'https://github.com/sparkbox/mina-cloudflare-purge'
  s.license = 'MIT'
  s.files = `git ls-files`.split($/)
  s.summary = 'Purges all Cloudflare files during deployments'

  s.add_development_dependency 'minitest', '>= 5.9.1'
end
