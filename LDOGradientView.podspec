Pod::Spec.new do |s|
  s.name             = 'LDOGradientView'
  s.version          = '1.0.1'
  s.summary          = 'A simple but flexible gradient view.'

  s.description      = <<-DESC
Draws a gradient between two colors. Direction, start and end offset are configurable.
All options are IBInspectable and can be modified in Interface Builder.
                       DESC

  s.homepage         = 'https://github.com/lurado/LDOGradientView'
  s.screenshots      = "https://github.com/lurado/LDOGradientView/blob/master/Screenshots/LDOGradientView.png?raw=true"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Julian Raschke und Sebastian Ludwig GbR" => "info@lurado.com" }
  s.source           = { :git => 'https://github.com/lurado/LDOGradientView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LDOGradientView/Classes/**/*'
end
