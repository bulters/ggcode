Gem::Specification.new do |s|
  s.name         = 'ggcode'
  s.summary      = ''
  s.description  = ''
  s.version      = '0.0.1'
  s.platform     = Gem::Platform::RUBY

  s.files        = ['ggcode.rb']
  s.require_path = '.'

  s.author      = 'Jeroen Bulters'
  s.email       = 'jeroen@holder.nl'
  s.homepage    = 'http://holder.nl'

  s.add_development_dependency('httparty', ["~> 0.10.2"])
end
