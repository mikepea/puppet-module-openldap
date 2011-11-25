
class openldap::service::actual {

    include openldap::install
    include openldap::config

    service { "slapd":
        ensure => running,
        hasstatus => false,
        hasrestart => true,
        require => Class["openldap::config"],
    }

}
