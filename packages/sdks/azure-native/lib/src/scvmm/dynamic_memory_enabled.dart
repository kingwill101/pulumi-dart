/// Gets or sets a value indicating whether to enable dynamic memory or not.
enum DynamicMemoryEnabled {
  valueFalse("false"),
  valueTrue("true");

  const DynamicMemoryEnabled(this.wireValue);
  final String wireValue;

  static DynamicMemoryEnabled fromValue(String value) {
    for (final item in DynamicMemoryEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicMemoryEnabled value: $value');
  }
}
