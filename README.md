OWASP WebGoat Cookbook
=============
Deploy a WebGoat 5.4 environment. [![Build Status](https://secure.travis-ci.org/wargames-cookbooks/webgoat.png)](http://travis-ci.org/wargames-cookbooks/webgoat)

Requirements
------------

#### Platform
- `Ubuntu 12.04`

#### Cookbooks
- `apt` - https://github.com/opscode-cookbooks/apt.git
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

- Install cookbook dependencies:  
`berks install`

- Run strainer tests:  
`bundle exec strainer test`  

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

License: See COPYING file.
