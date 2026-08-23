/// Whether the test case passed in the agent environment.
enum GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult {
  testResultUnspecified("TEST_RESULT_UNSPECIFIED"),
  passed("PASSED"),
  failed("FAILED");

  const GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult value: $value');
  }
}
