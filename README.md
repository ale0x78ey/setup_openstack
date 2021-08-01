# Setup OpenStack

## Install

```bash
git submodule update --init

python3 -m venv .venv
. .venv/bin/activate
pip install -U wheel

pip install -r third_party/setup_libvirt/requirements.txt
ansible-galaxy collection install amazon.aws
ansible-playbook -i inventories.d/libvirt \
  third_party/setup_libvirt/setup_libvirt.yml

pip install -r requirements.txt
export ANSIBLE_TRANSFORM_INVALID_GROUP_CHARS='ignore'
ansible-playbook -i inventories.d/openstack \
                 -e setup_ceph=yes \
                 setup_openstack.yml
```
