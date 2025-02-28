# broker

``` sh
# nix shell github:adamruzicka/nix-packages#broker -c broker inventory
                                     Host Inventory
┏━━━━┳━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━┓
┃ Id ┃ Host                         ┃ Provider     ┃ Action           ┃ OS         ┃
┡━━━━╇━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━╇━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━━┩
│ 0  │ host.something.somewhere.com │ AnsibleTower │ deploy-template  │ CentOS 9   │
└────┴──────────────────────────────┴──────────────┴──────────────────┴────────────┘
```

or add this repository as an input to your flake and use it as a package.
