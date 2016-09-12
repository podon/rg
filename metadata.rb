name             'rg'
maintainer       'Peter O'Donovan'
maintainer_email 'peterrobertodonovan@gmail.com'
description      'RG Test'
license          'All rights reserved'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))


%w{ centos }.each do |os|
  supports os
end


%w{ nginx }.each do |depend|
  depends depend
end
