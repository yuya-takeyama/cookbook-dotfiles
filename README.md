dotfiles Cookbook
=================

My personal dotfiles installation

Requirements
------------

#### packages

- [base_packages](https://github.com/yuya-takeyama/cookbook-base_packages)

Attributes
----------

#### dotfiles::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dotfiles']['user']</tt></td>
    <td>String</td>
    <td>User to install dotfiles</td>
    <td><tt>vagrant</tt></td>
  </tr>
  <tr>
    <td><tt>['dotfiles']['directory']</tt></td>
    <td>String</td>
    <td>Directory to install dotfiles</td>
    <td><tt>/home/vagrant/.dotfiles</tt></td>
  </tr>
</table>

Usage
-----

#### dotfiles::default

Just include `dotfiles` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dotfiles]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Author::Yuya Takeyama

The MIT License
