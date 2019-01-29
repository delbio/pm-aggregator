# PM Aggregator

Automate some common basic action over multiple package manager.

Available action:

- list
- outdated
- update

## Installation

Install Basher via: https://github.com/basherpm/basher

than:

```bash
basher install delbio/pm-aggregator
```

### Install pm adapters

Available adapters:

```bash
basher install delbio/pm-basher
basher install delbio/pm-npm
basher install delbio/pm-brew
basher install delbio/pm-pip
```

### Configure

add needed adapter configuration into .bashrc or equivalent:

```bash
export PMS_ENABLED="basher:brew:pip:npm"
```

