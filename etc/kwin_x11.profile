# Firejail profile for kwin_x11
# This file is overwritten after every install/update
# Persistent local customizations
include kwin_x11.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/kwin
noblacklist ${HOME}/.config/kwinrc
noblacklist ${HOME}/.config/kwinrulesrc
noblacklist ${HOME}/.local/share/kwin

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin kwin_x11
private-dev
private-etc alternatives,drirc,fonts,kde5rc,ld.so.cache,machine-id,xdg
private-tmp

noexec ${HOME}
noexec /tmp
