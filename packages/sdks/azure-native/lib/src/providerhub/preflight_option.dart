enum PreflightOption {
  none("None"),
  continueDeploymentOnFailure("ContinueDeploymentOnFailure"),
  defaultValidationOnly("DefaultValidationOnly");

  const PreflightOption(this.wireValue);
  final String wireValue;

  static PreflightOption fromValue(String value) {
    for (final item in PreflightOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreflightOption value: $value');
  }
}

