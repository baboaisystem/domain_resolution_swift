Pod::Spec.new do |spec|
  spec.name         = "BaboaiDomainsResolution"
  spec.version      = "0.0.1"
  spec.summary      = "Swift framework for resolving Baboai domains."

  spec.description  = <<-DESC
	This framework helps to resolve a decentralised domain names such as brad.crypto
                   DESC

  spec.homepage     = "https://github.com/baboaisystem/domain_resolution_swift.git"

  spec.license      = { :type => "MIT", :file => "LICENSE.md" }

  spec.author             = { "Snow" => "snow@baboai.com" }
  spec.social_media_url = 'https://twitter.com/baboaisystem'

  spec.ios.deployment_target = "11.0"

  spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/baboaisystem/domain_resolution_swift.git", :tag => spec.version }
  spec.source_files  = "Sources/BaboaiDomainsResolution/**/*.swift"

  spec.resources = "Sources/BaboaiDomainsResolution/Resources/**/*.json"

  spec.dependency 'CryptoSwift'
  spec.dependency 'BigInt'
end
