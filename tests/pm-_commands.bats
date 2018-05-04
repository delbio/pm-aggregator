#!/usr/bin/env bats

load test_helper

@test "without arguments prints usage" {
  run pm-_commands
  assert_failure
  assert_line "Usage: pm _commands <prefix>"
}

@test "lists commands" {
  run pm-_commands pm
  assert_success
  assert_line help
}

@test "does not list hidden commands" {
  run pm-_commands pm
  assert_success
  refute_line _commands
}
