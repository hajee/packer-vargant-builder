#!/usr/bin/env bash


echo "#!/bin/sh"                                                    >> /etc/rc.d/init.d/first_puppet
echo "#"                                                            >> /etc/rc.d/init.d/first_puppet
echo "# first_puppet: One time puppet configuration after reboot"   >> /etc/rc.d/init.d/first_puppet
echo "#"                                                            >> /etc/rc.d/init.d/first_puppet
echo "# chkconfig: 345 99 01"                                       >> /etc/rc.d/init.d/first_puppet
echo "# description:  This is a script to configure puppet once"    >> /etc/rc.d/init.d/first_puppet
echo "#"                                                            >> /etc/rc.d/init.d/first_puppet
echo "# processname: first_puppet"                                  >> /etc/rc.d/init.d/first_puppet
echo "# pidfile:"                                                   >> /etc/rc.d/init.d/first_puppet
echo "#"                                                            >> /etc/rc.d/init.d/first_puppet
echo ""                                                             >> /etc/rc.d/init.d/first_puppet
echo "start() {"                                                    >> /etc/rc.d/init.d/first_puppet
echo "   echo \"One time configuration of puppet\""                 >> /etc/rc.d/init.d/first_puppet
echo "    if [ -f /etc/profile.d/environment.sh ]; then"            >> /etc/rc.d/init.d/first_puppet
echo "        . /etc/profile.d/environment.sh"                      >> /etc/rc.d/init.d/first_puppet
echo "    else"                                                     >> /etc/rc.d/init.d/first_puppet
echo "        /bin/echo \"ERROR: /etc/profile.d/environment.sh not set\" >&2" >> /etc/rc.d/init.d/first_puppet
echo "        exit 1"                                               >> /etc/rc.d/init.d/first_puppet
echo "    fi"                                                       >> /etc/rc.d/init.d/first_puppet
echo "    /usr/bin/puppet apply /etc/puppet/manifests/site.pp"      >> /etc/rc.d/init.d/first_puppet
echo "    /sbin/chkconfig first_puppet off"                         >> /etc/rc.d/init.d/first_puppet
echo "}"                                                            >> /etc/rc.d/init.d/first_puppet
echo ""                                                             >> /etc/rc.d/init.d/first_puppet
echo "# See how we were called."                                    >> /etc/rc.d/init.d/first_puppet
echo "case \"\$1\" in"                                              >> /etc/rc.d/init.d/first_puppet
echo "    start)"                                                   >> /etc/rc.d/init.d/first_puppet
echo "  start"                                                      >> /etc/rc.d/init.d/first_puppet
echo "  ;;"                                                         >> /etc/rc.d/init.d/first_puppet
echo "esac"                                                         >> /etc/rc.d/init.d/first_puppet

chmod 0755 /etc/rc.d/init.d/first_puppet