Pod::Spec.new do |s|
    s.name             = "Algorithms"
    s.version          = '1.0.0'
    s.summary          = "A pod for swift-algorithms"
    s.description      = <<-DESC
                         Contains common algorithms and data structures for swift.
                         DESC
    s.homepage         = "https://github.com/tahirmt/swift-algorithms"
    s.license          = { :type => 'Copyright',
                           :text => <<-LICENSE
                           Copyright (c) 2020 Apple Inc. and the Swift project authors
                           Licensed under Apache License v2.0 with Runtime Library Exception
                           See https://swift.org/LICENSE.txt for license information
                           LICENSE
                         }
    s.author           = { "Apple" => "apple@apple.com" }
    s.source           = { :git => "https:/github.com/tahirmt/swift-algorithms", :tag => "v#{s.version.to_s}" }
  
    s.requires_arc = true
  
    s.ios.deployment_target = '12.0'
    s.watchos.deployment_target = '3.0'
    s.swift_version = '5.0'

    s.ios.dependency 'RealModule'
    s.source_files = 'Sources/Algorithms/**/*.{h,m,swift}'
  end
  