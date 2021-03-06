sprockets.append_path File.join "#{root}", "source/components"

set :css_dir, 'css'
set :js_dir, 'js'
set :img, 'images'

compass_config do |config|
	config.add_import_path "./source/components"
end

after_configuration do
	@bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
	sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

configure :build do
	# activate :minify_css
	# activate :minify_javascript
	activate :relative_assets
end


