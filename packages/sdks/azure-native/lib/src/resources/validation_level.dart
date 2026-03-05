/// The validation level of the deployment stack
enum ValidationLevel {
  template("Template"),
  provider("Provider"),
  providerNoRbac("ProviderNoRbac");

  const ValidationLevel(this.wireValue);
  final String wireValue;

  static ValidationLevel fromValue(String value) {
    for (final item in ValidationLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationLevel value: $value');
  }
}

