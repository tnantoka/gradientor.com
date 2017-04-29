require 'date'
require 'fileutils'

docs = ARGV[0]

txt = "#{docs}/Gradientor Gallery.txt"
thumbnail = "#{docs}/Gradientor Gallery.png"
facebook = "#{docs}/Facebook.png"
twitter = "#{docs}/Twitter.png"

title = Dir.glob('assets/gallery/*').map { |f| File.basename(f).to_i }.max + 1

content = <<-EOD
---
title: #{title}
---

#{File.read(txt)}
EOD
File.write("_posts/#{Date.today.to_s}-#{title}.md", content)

assets = "assets/gallery/#{title}/"
FileUtils.mkdir_p(assets)
FileUtils.cp(thumbnail, "#{assets}thumbnail.png")
FileUtils.cp(facebook, "#{assets}facebook.png")
FileUtils.cp(twitter, "#{assets}twitter.png")
