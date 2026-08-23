/// Incoming Traffic Policy
enum IncomingTrafficPolicy {
  allowAllTraffic("AllowAllTraffic"),
  allowVirtualNetworksOnly("AllowVirtualNetworksOnly");

  const IncomingTrafficPolicy(this.wireValue);
  final String wireValue;

  static IncomingTrafficPolicy fromValue(String value) {
    for (final item in IncomingTrafficPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncomingTrafficPolicy value: $value');
  }
}
