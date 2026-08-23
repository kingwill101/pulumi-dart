enum ExecutionConfigUsagesItem {
  executionEnvironmentUsageUnspecified("EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED"),
  render("RENDER"),
  deploy("DEPLOY"),
  verify("VERIFY"),
  predeploy("PREDEPLOY"),
  postdeploy("POSTDEPLOY");

  const ExecutionConfigUsagesItem(this.wireValue);
  final String wireValue;

  static ExecutionConfigUsagesItem fromValue(String value) {
    for (final item in ExecutionConfigUsagesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionConfigUsagesItem value: $value');
  }
}
