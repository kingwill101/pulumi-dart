/// Whether the test case passed in the agent environment.
enum GoogleCloudDialogflowCxV3TestCaseResultTestResult {
  testResultUnspecified("TEST_RESULT_UNSPECIFIED"),
  passed("PASSED"),
  failed("FAILED");

  const GoogleCloudDialogflowCxV3TestCaseResultTestResult(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3TestCaseResultTestResult fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3TestCaseResultTestResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3TestCaseResultTestResult value: $value');
  }
}
