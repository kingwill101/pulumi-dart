/// The type of the IP address allocation, defaulted to "DualStack".
enum IpAllocationType {
  valueIPV4("IPV4"),
  valueIPV6("IPV6"),
  valueDualStack("DualStack");

  const IpAllocationType(this.value);
  final String value;

  static IpAllocationType fromValue(String value) {
    for (final item in IpAllocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationType value: $value');
  }
}

