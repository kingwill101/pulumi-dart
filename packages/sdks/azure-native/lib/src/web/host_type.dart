/// Indicates whether the hostname is a standard or repository hostname.
enum HostType {
  valueStandard("Standard"),
  valueRepository("Repository");

  const HostType(this.wireValue);
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}
