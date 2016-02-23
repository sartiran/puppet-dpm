# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation
# errors and view a log of events) or by fully applying the test in a virtual
# environment (to compare the resulting system state to the desired state).
#
# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
#

class{'dpm::disknode':
   headnode_fqdn 		=> "dpmhead01.cern.ch",
   disk_nodes                   => ['localhost'],
   localdomain                  => 'cern.ch',
   token_password               => 'TOKEN_PASSWORD',
   xrootd_sharedkey             => 'A32TO64CHARACTERKEYTESTTESTTESTTEST',
   volist                       => [dteam, lhcb],
   dpmmgr_uid                   => 500,
}