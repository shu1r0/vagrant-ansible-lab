# Vagrantでansibleの環境を作るときのメモ

## ネットワークの構成

[topo](./topo.drawio.png)

## Ansibleの動作確認 (ansible-master)
```shell
$ ansible-inventory  --graph --vers
ansible-inventory [core 2.12.10]
  config file = /home/vagrant/share/ansible.cfg
  configured module search path = ['/home/vagrant/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  ansible collection location = /home/vagrant/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible-inventory
  python version = 3.8.10 (default, Nov 14 2022, 12:59:47) [GCC 9.4.0]
  jinja version = 2.10.1
  libyaml = True
```


```shell
$ ansible all -i hosts.yml --list-hosts
  hosts (2):
    atnode00a
    atnode00b
```


```shell
$ ansible all -i hosts.yml -m command -a uptime
atnode00a | CHANGED | rc=0 >>
 16:32:54 up  2:51,  1 user,  load average: 0.00, 0.00, 0.00
atnode00b | CHANGED | rc=0 >>
 16:32:54 up  1:33,  1 user,  load average: 0.00, 0.00, 0.00
 ```
