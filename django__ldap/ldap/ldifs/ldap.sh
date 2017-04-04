#!/usr/bin/env bash
sleep 5
ldapadd -h openldap -c -D cn=admin,dc=example,dc=com -w mypassword -f /ldifs/ldap.ldif
