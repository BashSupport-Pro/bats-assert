setup() {
  export TEST_MAIN_DIR="${BATS_TEST_DIRNAME}/.."
  export TEST_DEPS_DIR="${TEST_DEPS_DIR-${TEST_MAIN_DIR}/..}"

  # Load dependencies.
  load "${TEST_DEPS_DIR}/bats-support/load.bash"

  # Load library.
  load '../load'

  assert_test_pass() {
    test "$status" -eq 0
    test "${#lines[@]}" -eq 0
  }
}
