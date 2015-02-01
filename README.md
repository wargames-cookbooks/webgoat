OWASP WebGoat Cookbook
=============
Deploy a WebGoat 5.4 environment.
[![Cookbook Version](https://img.shields.io/cookbook/v/webgoat.svg)](https://community.opscode.com/cookbooks/webgoat) [![Build Status](https://secure.travis-ci.org/wargames-cookbooks/webgoat.png)](http://travis-ci.org/wargames-cookbooks/webgoat)

Requirements
------------

#### Platform
- `Ubuntu 12.04`

#### Cookbooks
- `java` - https://github.com/opscode-cookbooks/java.git
- `openssl` - https://github.com/opscode-cookbooks/openssl.git
- `tomcat` - https://github.com/opscode-cookbooks/tomcat.git

Usage
-----
#### webgoat::default

Just include `webgoat` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[webgoat]"
  ]
}
```

When it's done browse `http://<ip_address>/WebGoat/attack`

#### Running tests

- First, install dependencies:  
`bundle install`

- Run Checkstyle and ChefSpec:  
`bundle exec rake`

- Run Kitchen tests:  
`bundle exec rake kitchen`  

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add-component-x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org> 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
