class openldap::nagios {
    nagios::check { "check_ldapsync":
        module => "openldap",
        tag => "autoapply",
    }


    nagios::nrpe_command { "check_ldapsync":
        command => "check_ldapsync",
        cplugdir => 'local',
        sudo => false,
        parameters => " ",
        tag => "autoapply",
    }
}


