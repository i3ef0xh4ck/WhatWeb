##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "SlingBox" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-11-17
version "0.1"
description "The Slingbox is a TV streaming media device that encodes video for transmission over the Internet - Homepage: http://slingbox.com/"

# ShodanHQ results as at 2012-11-17 #
# 7 for _sling_skey
# 2 for watch/sling_player

# Google results as at 2012-11-17 #
# 2 for intitle:"Slingbox Setup" "Welcome to Slingbox Setup" "We'll help you set up your Slingbox"

# Dorks #
dorks [
'intitle:"Slingbox Setup" "Welcome to Slingbox Setup" "We\'ll help you set up your Slingbox"'
]

# Examples #
examples %w|
64.74.138.52
64.74.138.157
64.74.138.145
64.74.138.60
67.148.153.120
64.74.138.52
70.42.244.195
70.42.244.211
intsetup.sling.com
|

# Matches #
matches [

# Set-Cookie # _sling_skey
{ :search=>"headers[set-cookie]", :regexp=>/_sling_skey=[^;]+/ },

# Version Detection
{ :version=>/<!-- Footer start -->\s+<div id="footer_center">\s+<p>Portal Version:&nbsp;([^,]+), Plugin Version:&nbsp;/ },

]

end

