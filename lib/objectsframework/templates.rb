require 'tilt'
module ObjectsFramework
	module TemplateEngine
		attr_accessor :template_layout
		attr_accessor :template_directory

		def set_template_layout(layout)
			define_method "read_template_layout" do
				return layout
			end
		end

		def set_template_directory(dir)
			define_method "read_template_directory" do
				return dir
			end
		end
	end
	# Add some methods to the ObjectsFramework Object class to enable easy rendering inside an object
	class Object
		extend TemplateEngine
		def render(templatename)
			Tilt::ERBTemplate.new(read_template_directory+"/"+read_template_layout).render(self) {Tilt::ERBTemplate.new(read_template_directory+"/"+templatename).render(self)}
		end
	end
end

# # Example Usage:
# # Base path /user
# require 'objectsframework/templates'
# class User < ObjectsFramework::Object
# 	set_template_layout "layout.html.erb"
# 	set_template_directory "views"
#
# 	# Request: GET /user/index or GET /user
# 	def get_index
# 		# Will render "views/index.html.erb" with layout "layout.html.erb"
# 		response.write(render("index.html.erb"))
# 	end
# end
