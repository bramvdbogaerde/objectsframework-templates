Gem::Specification.new do |s|
  s.name        = 'objectsframework-templates'
  s.version     = '1.0.2'
  s.licenses    = ['MIT']
  s.summary     = "Templates Engine for ObjectsFramework"
  s.description = "Templates Engine for ObjectsFramework, currently only ERB templating supported, coming is HAML and others!"
  s.authors     = ["Bram Vandenbogaerde"]
  s.email       = 'contact@bramvdb.com'
  s.files       = Dir.glob("lib/**/**")
  s.add_runtime_dependency "tilt","~> 2.0.1"
  s.homepage    = 'https://github.com/bramvdbogaerde/objectsframework-templates'
end
