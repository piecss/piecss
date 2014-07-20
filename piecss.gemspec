Gem::Specification.new do |s|
  # Release Specific Information
  s.licenses = ['MIT']
  s.version = "0.1.4"
  s.date = "2014-07-20"

  # Gem Details
  s.name = "piecss"
  s.authors = ["Babs Gosgens"]
  s.summary = %q{A collection of tools for building responsive websites.}
  s.description = %q{Piecss produces little to none output. The only default output that Piecss produces is an optimized version of Normalize.}
  s.email = "babsgosgens@gmail.com"
  s.homepage = "https://github.com/piecss/piecss"

  # Gem Files
  s.files = %w(LICENSE.txt)
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("sass/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("sass", ["~> 3.3"])
  # s.add_dependency("compass", ["~> 1.0"])
end
