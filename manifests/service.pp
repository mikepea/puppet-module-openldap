
class openldap::service {

    service { "slapd":
        ensure => running,
        hasstatus => false,
        hasrestart => true,
        require => Class["openldap::config"],
    }

}

