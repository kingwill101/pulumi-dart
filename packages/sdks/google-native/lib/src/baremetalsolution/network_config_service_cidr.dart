/// Service CIDR, if any.
enum NetworkConfigServiceCidr {
  serviceCidrUnspecified("SERVICE_CIDR_UNSPECIFIED"),
  disabled("DISABLED"),
  high26("HIGH_26"),
  high27("HIGH_27"),
  high28("HIGH_28");

  const NetworkConfigServiceCidr(this.wireValue);
  final String wireValue;

  static NetworkConfigServiceCidr fromValue(String value) {
    for (final item in NetworkConfigServiceCidr.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigServiceCidr value: $value');
  }
}

