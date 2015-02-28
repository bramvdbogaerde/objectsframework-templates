module ObjectsFramework
	# Add some methods to the ObjectsFramework Object class to enable easy rendering inside an object
	class Object
		def self.set_template_layout(layout)
			@@layout = layout
		end

		def self.set_template_directory(dir)
			@@directory = dir
		end

		def render(templatename)
			Tilt::ERBTemplate.new(@@directory+"/"+@@layout).render(self) {Tilt::ERBTemplate.new(@@directory+"/"+templatename).render(self)}
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
