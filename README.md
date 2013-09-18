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

License and Authors
-------------------
Authors:

- Chance Zibolski <chance@osuosl.org>
