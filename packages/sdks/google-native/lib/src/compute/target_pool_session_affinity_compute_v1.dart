/// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
enum TargetPoolSessionAffinityComputeV1 {
  clientIp("CLIENT_IP"),
  clientIpNoDestination("CLIENT_IP_NO_DESTINATION"),
  clientIpPortProto("CLIENT_IP_PORT_PROTO"),
  clientIpProto("CLIENT_IP_PROTO"),
  generatedCookie("GENERATED_COOKIE"),
  headerField("HEADER_FIELD"),
  httpCookie("HTTP_COOKIE"),
  none("NONE");

  const TargetPoolSessionAffinityComputeV1(this.wireValue);
  final String wireValue;

  static TargetPoolSessionAffinityComputeV1 fromValue(String value) {
    for (final item in TargetPoolSessionAffinityComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TargetPoolSessionAffinityComputeV1 value: $value',
    );
  }
}
