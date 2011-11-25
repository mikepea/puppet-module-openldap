class openldap::munin {

    munin::plugin::symlink { "slapd_statistics_bytes":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_pdu":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_other":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_connections":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_waiters":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_operations":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_operations_diff":
        target => "slapd_",
        script_path => "/usr/share/munin/plugins/",
    }

    #db_stat binary
    package { "db4.2-util": ensure => installed }

    munin::pluginconf { "slapd_bdb_cache":
        plugin_alias => "slapd_bdb_cache*",
        config_content => " user root\n env.dbstat /usr/bin/db4.2_stat"
    }

    munin::plugin::symlink { "slapd_bdb_cache_pages":
        target => "slapd_bdb_cache_",
        script_path => "/usr/share/munin/plugins/",
    }

    munin::plugin::symlink { "slapd_bdb_cache_percent":
        target => "slapd_bdb_cache_",
        script_path => "/usr/share/munin/plugins/",
    }

}
