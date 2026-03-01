enum ExecutionConfigUsagesItem {
  executionEnvironmentUsageUnspecified("EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED"),
  render("RENDER"),
  deploy("DEPLOY"),
  verify("VERIFY"),
  predeploy("PREDEPLOY"),
  postdeploy("POSTDEPLOY");

  const ExecutionConfigUsagesItem(this.value);
  final String value;

  static ExecutionConfigUsagesItem fromValue(String value) {
    for (final item in ExecutionConfigUsagesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionConfigUsagesItem value: $value');
  }
}

