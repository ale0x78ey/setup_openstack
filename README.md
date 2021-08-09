# Setup OpenStack

## Install

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -U wheel

git submodule update --init
. setup.sh

ansible-playbook setup_openstack.yml -i inventories.d/ \
  -e 'setup_ceph=yes openstack_release=victoria project_name=victoria' \
```
