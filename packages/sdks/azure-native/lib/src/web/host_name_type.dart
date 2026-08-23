/// Hostname type.
enum HostNameType {
  valueVerified("Verified"),
  valueManaged("Managed");

  const HostNameType(this.wireValue);
  final String wireValue;

  static HostNameType fromValue(String value) {
    for (final item in HostNameType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostNameType value: $value');
  }
}
