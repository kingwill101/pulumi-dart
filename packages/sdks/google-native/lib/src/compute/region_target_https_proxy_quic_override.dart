/// Specifies the QUIC override policy for this TargetHttpsProxy resource. This setting determines whether the load balancer attempts to negotiate QUIC with clients. You can specify NONE, ENABLE, or DISABLE. - When quic-override is set to NONE, Google manages whether QUIC is used. - When quic-override is set to ENABLE, the load balancer uses QUIC when possible. - When quic-override is set to DISABLE, the load balancer doesn't use QUIC. - If the quic-override flag is not specified, NONE is implied.
enum RegionTargetHttpsProxyQuicOverride {
  disable("DISABLE"),
  enable("ENABLE"),
  none("NONE");

  const RegionTargetHttpsProxyQuicOverride(this.wireValue);
  final String wireValue;

  static RegionTargetHttpsProxyQuicOverride fromValue(String value) {
    for (final item in RegionTargetHttpsProxyQuicOverride.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionTargetHttpsProxyQuicOverride value: $value');
  }
}

