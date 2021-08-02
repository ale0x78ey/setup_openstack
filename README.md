# Setup OpenStack

## Install

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -U wheel

git submodule update --init
. setup.sh

ansible-playbook -i inventories.d/ setup_libvirt.yml
# ...

ansible-playbook -i inventories.d/openstack \
                 -e setup_ceph=yes \
                 setup_openstack.yml
```
