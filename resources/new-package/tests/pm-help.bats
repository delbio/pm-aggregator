#!/usr/bin/env bats

load test_helper

@test "without args, show help for root pm command" {
  run pm-help

  assert_success

  assert_line "Usage: pm <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${PM_TMP_BIN}/pm-hello" <<SH
#!shebang
# Usage: pm hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run pm-help hello

  assert_success
  assert_output <<SH
Usage: pm hello <world>

This command is useful for saying hello.
SH
}
