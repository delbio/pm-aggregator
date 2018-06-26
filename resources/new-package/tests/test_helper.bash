load lib/assertions

export PM_TEST_DIR="${BATS_TMPDIR}/pm"
export PM_TMP_BIN="${PM_TEST_DIR}/bin"
export PM_CWD="${PM_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_TMP_BIN}:$PATH"

mkdir -p "${PM_TMP_BIN}"
mkdir -p "${PM_TEST_DIR}"
mkdir -p "${PM_CWD}"

setup() {
  cd "${PM_CWD}"
}

teardown() {
  rm -rf "${PM_TEST_DIR}"
}
