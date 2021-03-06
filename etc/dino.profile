# Firejail profile for dino
# This file is overwritten after every install/update
# Persistent local customizations
include dino.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.local/share/dino

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.local/share/dino
whitelist ${HOME}/.local/share/dino
whitelist ${HOME}/Downloads
include whitelist-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

disable-mnt
private-bin dino
private-dev
# private-etc alternatives,fonts,ca-certificates,ssl,pki,crypto-policies # breaks server connection
private-tmp

noexec ${HOME}
noexec /tmp
