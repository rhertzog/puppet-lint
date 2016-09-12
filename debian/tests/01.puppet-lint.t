#!/bin/sh

test_description="puppet lint"

. ./sharness.sh

fixtures=../fixtures

lockfile=/var/lib/puppet/state/agent_disabled.lock

test_expect_success "ok.pp" "
  puppet-lint ${fixtures}/ok.pp
"

test_expect_success "long-line.pp" "
  puppet-lint ${fixtures}/long-line.pp | grep 'WARNING: line has more than 140 characters'
"

test_done
