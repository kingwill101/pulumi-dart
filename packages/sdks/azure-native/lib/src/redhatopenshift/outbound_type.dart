/// The OutboundType used for egress traffic.
enum OutboundType {
  valueLoadbalancer("Loadbalancer"),
  valueUserDefinedRouting("UserDefinedRouting");

  const OutboundType(this.value);
  final String value;

  static OutboundType fromValue(String value) {
    for (final item in OutboundType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundType value: $value');
  }
}

