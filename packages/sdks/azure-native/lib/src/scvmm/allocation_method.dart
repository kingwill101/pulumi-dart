/// Gets or sets the mac address type.
enum AllocationMethod {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const AllocationMethod(this.wireValue);
  final String wireValue;

  static AllocationMethod fromValue(String value) {
    for (final item in AllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationMethod value: $value');
  }
}
