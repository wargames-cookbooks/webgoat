# This source file is part of WebGoat's chef cookbook.
#
# WebGoat's chef cookbook is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# WebGoat's chef cookbook is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with WebGoat's chef cookbook. If not, see <http://www.gnu.org/licenses/gpl-3.0.html>.

name             'webgoat'
maintainer       'Sliim'
maintainer_email 'sliim@mailoo.org'
license          'GPLv3'
description      'Installs/Configures WebGoat application'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends "apt"
depends "java"
depends 'openssl'
depends "tomcat"
