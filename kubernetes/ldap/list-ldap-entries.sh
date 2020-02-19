# https://www.digitalocean.com/community/tutorials/how-to-manage-and-use-ldap-servers-with-openldap-utilities
# ldapsearch -H ldap:// -x -LLL -s base -b "" namingContexts
kubectl exec ldap -- ldapsearch -x -H ldap://localhost -b dc=confluent,dc=io -D "cn=admin,dc=confluent,dc=io" -w admin
