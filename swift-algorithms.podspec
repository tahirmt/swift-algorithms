Pod::Spec.new do |s|
    s.name             = "swift-algorithms"
    s.module_name      = "Algorithms"
    s.version          = '1.0.0'
    s.summary          = "A pod for swift-algorithms"
    s.description      = <<-DESC
                         Contains common algorithms and data structures for swift.
                         DESC
    s.homepage         = "https://github.com/apple/swift-algorithms"
    s.license          = { :type => 'Apache License, Version 2.', :file => 'LICENSE.txt'}
    s.author           = { "Apple" => "apple@apple.com" }
    s.source           = { :git => "https://github.com/apple/swift-algorithms.git", :tag => s.version.to_s }
  
    s.requires_arc = true
  
    s.ios.deployment_target = '12.0'
    s.watchos.deployment_target = '3.0'
    s.swift_version = '5.0'

    # This file uses swift-numerics-shims which is not compatible with watchOS
    s.watchos.exclude_files = 'Sources/Algorithms/RandomSample.swift'
    s.ios.dependency 'swift-numerics-real'
    s.source_files = 'Sources/Algorithms/**/*.{h,m,swift}'
  end
  