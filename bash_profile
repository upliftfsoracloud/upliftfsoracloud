# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$ORACLE_HOME/bin:$HOME/bin

export PATH
KEYSTONEFILE=/home/oracle/.wlst/nm-key-base_domain.props # create by run startCompoment.sh ohs1 storeUserConfig
DADS=$ORACLE_HOME/user_projects/domains/base_domain/config/fmwconfig/components/OHS/instances/ohs1/mod_plsql/dads.conf
# cat ~/Oracle/Middleware/Oracle_Home/user_projects/domains/base_domain/config/fmwconfig/components/OHS/instances/ohs1/mod_plsql/dads.conf
export DOMAIN_HOME=/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/base_domain
export ORACLE_HOME=/home/oracle/Oracle/Middleware/Oracle_Home
alias start_ohs="$ORACLE_HOME/user_projects/domains/base_domain/bin/startComponent.sh ohs1"
alias stop_ohs="$ORACLE_HOME/user_projects/domains/base_domain/bin/stopComponent.sh ohs1"
# To change port number in httpd.conf and ssl.conf
# $ORACLE_HOME/user_projects/domains/base_domain/config/fmwconfig/components/OHS/instances/ohs1/httpd.conf
# $ORACLE_HOME/user_projects/domains/base_domain/config/fmwconfig/components/OHS/instances/ohs1/ssl.conf
alias editssl='/bin/vi $ORACLE_HOME/user_projects/domains/base_domain/config/fmwconfig/components/OHS/instances/ohs1/ssl.conf'
alias showlog='more /home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/base_domain/servers/ohs1/logs/access_log'
alias showerror='more /home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/base_domain/servers/ohs1/logs/ohs1.log'
alias start_nodemgr='$ORACLE_HOME/wlserver/server/bin/startNodeManager.sh'
export JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64
export ORACLE_INSTANCE=/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/base_domain
