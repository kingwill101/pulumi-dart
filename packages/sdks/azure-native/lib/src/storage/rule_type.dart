/// The valid value is Lifecycle
enum RuleType {
  valueLifecycle("Lifecycle");

  const RuleType(this.value);
  final String value;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}

