/// Indicates whether the hostname is a standard or repository hostname.
enum HostType {
  valueStandard("Standard"),
  valueRepository("Repository");

  const HostType(this.value);
  final String value;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}

