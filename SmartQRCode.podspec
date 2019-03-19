Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "SmartQRCode"
s.summary = "SmartQRCode lets a user creates a new QRCode representing a URL, a string or arbitrary data"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Thinh Nguyen" => "thinhnguyen12389@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/fanta1ty/SmartQRCode"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/fanta1ty/SmartQRCode.git",
:tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.framework = "Foundation"

# 8
s.source_files = "SmartQRCode/**/*.{swift}"

# 9
s.resources = ""

# 10
s.swift_version = "4.2"

end
