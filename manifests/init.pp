
class openldap {

    case $operatingsystem {
        ubuntu,debian: { include openldap::actual }
        default: { warning("openldap: ${hostname} - ${operatingsystem} is not supported yet") }
    }

}


