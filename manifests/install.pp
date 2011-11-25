
class openldap::install {

    package { "slapd": ensure => present }
    package { "ldap-utils": ensure => present }

    #include openldap::munin
    #include openldap::nagios

}
