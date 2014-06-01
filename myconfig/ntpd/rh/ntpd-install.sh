#!/bin/bash
set -e

yum install ntp ntpdate ntp-doc
chkconfig ntpd on
ntpdate pool.ntp.org
