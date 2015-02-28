ObjectsFramework Template Engine
=================================

This gem allows you to easily render templates in an ObjectsFramework Object. (If you are not familiar with ObjectsFramework be sure to [check this repository](http://github.com/bramvdbogaerde/objectsframework))

Here is an example:
Let say you wanted to render index.html.erb with the ERB templating engine, and you want to use layout.html.erb as the layout of your template.

```
require 'objectsframework/templates'

class User < ObjectsFramework::Object
	set_template_layout "layout.html.erb" # required
 	set_template_directory "views" # required

	def get_index
		response.write(render("index.html.erb"))
	end
end
```

## License
MIT
