/// Required. Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
enum FilterProtocolVersion {
  protocolVersionUnspecified("PROTOCOL_VERSION_UNSPECIFIED"),
  ipv4("IPV4");

  const FilterProtocolVersion(this.wireValue);
  final String wireValue;

  static FilterProtocolVersion fromValue(String value) {
    for (final item in FilterProtocolVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterProtocolVersion value: $value');
  }
}

