require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('piecss',
                                :path => extension_path,
                                :stylesheets_directory => File.join(extension_path, 'sass'),
                                :templates_directory => File.join(extension_path, 'templates'))