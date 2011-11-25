
class openldap::config {

    case $openldap_slapd_conf_template {
        "": { $our_openldap_slapd_conf_template = "openldap/slapd.conf.erb" }
        default: { $our_openldap_slapd_conf_template = $openldap_slapd_conf_template }
    }

    case $openldap_base_suffix {
        "": { $our_openldap_base_suffix = "dc=example,dc=com" }
        default: { $our_openldap_base_suffix = "${openldap_base_suffix}" }
    }

    file { "/etc/ldap/slapd.conf":
        content => template("${our_openldap_slapd_conf_template}"),
        owner => root,
        group => openldap,
        mode => 0640,
        require => Class["openldap::install"],
        notify  => Class["openldap::service"]
    }

}
