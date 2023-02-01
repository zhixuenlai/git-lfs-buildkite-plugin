#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Install Git LFS" {

  run "$PWD/hooks/pre-checkout"

  assert_success
  assert_output --partial "Git LFS installed successfully"
}
