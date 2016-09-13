name             'rg'
maintainer       'Peter O\'Donovan'
maintainer_email 'peterrobertodonovan@gmail.com'
description      'RG Test'
license          'All rights reserved'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))


%w{ ubuntu  }.each do |os|
  supports os
end


%w{ chef_nginx build-essential ohai runit yum yum-epel zypper rbenv ruby_build }.each do |depend|
  depends depend
end
