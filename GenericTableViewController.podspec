Pod::Spec.new do |s|
  s.name             = 'GenericTableViewController'
  s.version          = '0.1.0'
  s.summary          = 'Generic table view controller that works for different models.'
 
  s.description      = <<-DESC
This generic table view controller can be used for different models, different cells.
                       DESC
 
  s.homepage         = 'https://github.com/serhatsezer/GenericTableViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Serhat Sezer' => 'serhat.szr@gmail.com' }
  s.source           = { :git => 'https://github.com/serhatsezer/GenericTableViewController.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'GenericTableViewController/Sources/'
 
end