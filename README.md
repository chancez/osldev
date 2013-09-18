osldev Cookbook
===============
Generalized Vagrant environment for developing in at the OSL.

Requirements
------------

#### packages
- `vagrant-berkshelf`
- `vagrant-omnibus`

Attributes
----------

#### osldev::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['osldev']['packages']</tt></td>
    <td>List</td>
    <td>Packages to install using the system package manager.</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

Usage
-----
#### osldev::default
Just include `osldev` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[osldev]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

- Chance Zibolski <chance@osuosl.org>
