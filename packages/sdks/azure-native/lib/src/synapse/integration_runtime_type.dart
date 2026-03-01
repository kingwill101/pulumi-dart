/// Type of integration runtime.
enum IntegrationRuntimeType {
  valueManaged("Managed"),
  valueSelfHosted("SelfHosted");

  const IntegrationRuntimeType(this.value);
  final String value;

  static IntegrationRuntimeType fromValue(String value) {
    for (final item in IntegrationRuntimeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeType value: $value');
  }
}

