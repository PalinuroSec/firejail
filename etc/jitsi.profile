# Firejail profile for jitsi
# This file is overwritten after every install/update
# Persistent local customizations
include jitsi.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.jitsi

# Allow access to java
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-cache
private-tmp
