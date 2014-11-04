#/bin/bash
PASS="admin"


if [ -f /.jboss_admin_pass_configured ]; then
    echo "JBoss admin user's password has been configured!"
    exit 0
fi

#generate password

echo "=> Configuring admin user with a password in JBoss"
/jboss-as-7.0.2.Final/bin/add-user.sh admin ${PASS}
echo "=> Done!"
echo "========================================================================"
echo "You can now configure to this JBoss server using:"
echo ""
echo "    admin:${PASS}"
echo ""
echo "========================================================================"

touch /.jboss_admin_pass_configured
