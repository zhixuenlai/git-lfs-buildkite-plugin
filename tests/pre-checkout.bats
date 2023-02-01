#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Install Git LFS" {
  export BUILDKITE_PLUGIN_GIT_LFS_VERSION="3.3.0"

  run "$PWD/hooks/pre-checkout"

  assert_success
  assert_output --partial "Git LFS v3.3.0 installed successfully"
}
