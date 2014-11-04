#!/bin/bash

if [ ! -f /.jboss_admin_pass_configured ]; then
    /set_jboss_admin_pass.sh
fi
#
exec /jboss-as-7.0.2.Final/bin/standalone.sh -b=0.0.0.0
