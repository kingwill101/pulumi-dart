/// Incoming Traffic Policy
enum IncomingTrafficPolicy {
  allowAllTraffic("AllowAllTraffic"),
  allowVirtualNetworksOnly("AllowVirtualNetworksOnly");

  const IncomingTrafficPolicy(this.value);
  final String value;

  static IncomingTrafficPolicy fromValue(String value) {
    for (final item in IncomingTrafficPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IncomingTrafficPolicy value: $value');
  }
}

