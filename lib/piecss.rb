extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
stylesheets_path = File.join(base_directory, 'sass')
templates_path = File.join(base_directory, 'templates')

if (defined? Compass)
  Compass::Frameworks.register('piecss',
                                  :path => extension_path,
                                  :stylesheets_directory => stylesheets_path,
                                  :templates_directory => templates_path
else
  # compass not found, register on the Sass path via the environment.
  if ENV.has_key?("SASS_PATH")
    ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + stylesheets_path
  else
    ENV["SASS_PATH"] = stylesheets_path
  end
end
