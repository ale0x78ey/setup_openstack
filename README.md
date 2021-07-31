# Setup kolla-ansible

## Install

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
. setup.sh
ansible-playbook -i inventories.d/libvirt setup_libvirt.yml
```
