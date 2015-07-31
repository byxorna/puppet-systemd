require 'puppet'
# Author mleone
# Module mleone/systemd
systemd_available = 'false'
if File.exist?('/bin/systemctl')
  systemd_available = 'true'
end

Facter.add('systemd_available') do
  setcode do
    systemd_available
  end
end
