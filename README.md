OWASP WebGoat Cookbook
=============
Deploy a WebGoat 5.4 environment.
[![Cookbook Version](https://img.shields.io/cookbook/v/webgoat.svg)](https://community.opscode.com/cookbooks/webgoat) [![Build Status](https://secure.travis-ci.org/wargames-cookbooks/webgoat.png)](http://travis-ci.org/wargames-cookbooks/webgoat)

Requirements
------------
#### Platform
- `Ubuntu 14.04`
- `Debian 9.0`

#### Cookbooks
- `java` - https://supermarket.chef.io/cookbooks/java

Attributes
----------
#### webgoat::default
| Key                   | Type   |  Description                                                  |
| --------------------- | ------ | ------------------------------------------------------------- |
| `[webgoat][path]`     | String | Path where will be stored jar file. (default: `/opt/webgoat`) |
| `[webgoat][port]`     | String | HTTP Port for wehboat instance. (default: `8080`)             |
| `[webgoat][jar]`      | String | Webgoat jar URL.                                              |
| `[webgoat][checksum]` | String | SHA256 sum for jar file.                                      |

Usage
-----
#### webgoat::default

Just include `webgoat` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[webgoat]"
  ],
  "attributes": {
    "webgoat": {
      "port": "8090"
    }
  }
}
```

When it's done browse `http://<ip_address>:8080/WebGoat/attack`

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
