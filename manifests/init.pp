# == Class: sargrapho
#
# This class installs SarGraphO
#
# === Parameters
#
# Document parameters here.
#
# [*rpm*]
#   The name of the RPM package to install.
#   Default: sargrapho-1.0.0-1.noarch.rpm
#
# [*rpm_url*]
#   The URL of the RPM package to install.
#   Default: https://github.com/jasonc/sargrapho/releases/download/v1.0.0/${rpm}
#
# === Authors
#
# Jason Cannon <jason@thisidig.com>
#
class sargrapho(
  $rpm     = 'sargrapho-1.0.0-1.noarch.rpm',
  $rpm_url = 'UNSET',
) {

  if $rpm_url == 'UNSET' {
    $real_rpm_url = "http://github.com/jasonc/sargrapho/releases/download/v1.0.0/${rpm}"
  }
  else {
    $real_rpm_url = $rpm_url
  }

  package { 'rrdtool':
    ensure   => installed,
  }

  package { 'sargrapho':
    ensure   => installed,
    provider => 'rpm',
    source   => $real_rpm_url,
  }

}
