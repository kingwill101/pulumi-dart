/// The OutboundType used for egress traffic.
enum OutboundType {
  valueLoadbalancer("Loadbalancer"),
  valueUserDefinedRouting("UserDefinedRouting");

  const OutboundType(this.wireValue);
  final String wireValue;

  static OutboundType fromValue(String value) {
    for (final item in OutboundType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutboundType value: $value');
  }
}
