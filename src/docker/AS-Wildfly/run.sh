#!/bin/bash

if [ ! -f /.jboss_admin_pass_configured ]; then
    /set_jboss_admin_pass.sh
fi
#
exec /wildfly-8.1.0.Final/bin/standalone.sh -b=0.0.0.0
