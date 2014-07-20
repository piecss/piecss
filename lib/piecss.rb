require 'compass'
Compass::Frameworks.register('piecss',
                            :stylesheets_directory => File.join(File.dirname(__FILE__), '..', 'sass'),
                            :templates_directory => File.join(File.dirname(__FILE__), '..', 'templates'))