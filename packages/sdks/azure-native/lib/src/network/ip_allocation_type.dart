/// The type for the IpAllocation.
enum IpAllocationType {
  valueUndefined("Undefined"),
  valueHypernet("Hypernet");

  const IpAllocationType(this.wireValue);
  final String wireValue;

  static IpAllocationType fromValue(String value) {
    for (final item in IpAllocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationType value: $value');
  }
}
