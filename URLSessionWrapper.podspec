

Pod::Spec.new do |s|



  s.name         = "URLSessionWrapper"
  s.version      = "0.0.2"
  s.summary      = "Simple wrapper for URLSession."

  s.description  = <<-DESC
  A very simple wrapper for URLSession.
                   DESC

  s.homepage     = "https://github.com/SimonRiis/URLSessionWrapper"


  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "Simon Riis Olesen" => "simonriis@realized.dk" }
  s.social_media_url   = "https://twitter.com/Simon_Riis"

  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/SimonRiis/URLSessionWrapper.git", :tag => "#{s.version}" }


  s.source_files  = "URLSessionWrapper/URLSessionWrapper/*.swift"
  s.source_files  = 'URLSessionWrapper/URLSessionWrapper/**/*.{h,m,swift}'
  s.swift_version = '4.1'


end
